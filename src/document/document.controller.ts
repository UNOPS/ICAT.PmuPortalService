import { DocumentOwner } from './entity/document-owner.entity';
import { editFileName, fileLocation } from './entity/file-upload.utils';
import { FileInterceptor } from '@nestjs/platform-express';
import { DocumentService } from './document.service';
import { Crud, CrudController, CrudRequest } from '@nestjsx/crud';
import { Documents } from './entity/document.entity';
import {
  Controller,
  Post,
  UploadedFile,
  UseInterceptors,
  Body,
  Param,
  Req,
  Get,
  StreamableFile,
  Res,
} from '@nestjs/common';
import { join } from 'path';
import { createReadStream } from 'fs';
const multer = require('multer');

@Crud({
  model: {
    type: Documents,
  },
})
@Controller('document')
export class DocumentController implements CrudController<Documents> {
  constructor(public service: DocumentService) {}

  @Post('upload')
  uploadFile(@Body() file: Documents) {}

  @Post('upload2/:oid/:owner')
  @UseInterceptors(
    FileInterceptor('file', {
      storage: multer.diskStorage({
        destination: fileLocation,
        filename: editFileName,
      }),
    }),
  )
  async uploadFile2(
    @UploadedFile() file,
    @Req() req: CrudRequest,
    @Param('oid') oid,
    @Param('owner') owner,
  ) {
    
    const docowner: DocumentOwner = (<any>DocumentOwner)[owner];
    const path = join(owner, oid, file.filename);
    const doc = new Documents();
    doc.documentOwnerId = oid;
    doc.documentOwner = docowner;
    doc.fileName = file.originalname;
    doc.mimeType = file.mimetype;
    doc.relativePath = path;

    const newdoc = this.service.saveDocument(doc);
  }

  @Post('upload3/:oid')
  @UseInterceptors(FileInterceptor('file'))
  uploadFile3(@UploadedFile() file, @Param('oid') oid) {}

  @Post('delete/:docId')
  async deleteDoc(@Param('docId') docId: number) {
    return await this.service.deleteDocument(docId);
  }

  @Get('getDocument/:oid/:owner')
  async getDocuments(
    @Param('oid') oid: number,
    @Param('owner') owner: DocumentOwner,
  ) {
    const docowner: DocumentOwner = (<any>DocumentOwner)[owner];
    return await this.service.getDocuments(oid, docowner);
  }

  @Get('downloadDocument/:state/:did')
  async downloadDocuments(
    @Res({ passthrough: true }) res,
    @Param('did') did: number,
    @Param('state') state: string,
  ): Promise<StreamableFile> {
    const doc: Documents = await this.service.getDocument(did);

    res.set({
      'Content-Type': `${doc.mimeType}`,
      'Content-Disposition': `${state}; filename=${doc.fileName}`,
    });

    const file = createReadStream(`./static-files/${doc.relativePath}`);

    return new StreamableFile(file);
  }
}
