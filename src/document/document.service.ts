import { ConfigService } from '@nestjs/config';
import { statticFileLocation } from './entity/file-upload.utils';
import { DocumentOwner } from './entity/document-owner.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Injectable } from '@nestjs/common';
import { Documents } from './entity/document.entity';
import { join } from 'path';
const fs = require('fs');
const path = require('path');

@Injectable()
export class DocumentService extends TypeOrmCrudService<Documents> {
  constructor(
    @InjectRepository(Documents) repo,
    private configService: ConfigService,
  ) {
    super(repo);
  }

  saveDocument(doc: Documents) {
    return this.repo.save(doc).catch((error) => {
      
    });
  }

  deleteDocument(docId: number) {
    const doc = this.getDocument(docId).then((val) => {
      return this.repo
        .delete(val)
        .then((res) => {
          this.deleteFile(val.relativePath);
        })
        .catch((error) => {
          
        });
    });
  }

  deleteFile(filepath: string) {
    const rootPath = path.resolve('./');
    const fullfilePath = join(rootPath, statticFileLocation, filepath);
    
    if (fs.existsSync(fullfilePath)) {
      fs.unlinkSync(fullfilePath);
    }
  }

  getDocument(id: number): Promise<Documents> {
    return this.repo.findOne({ where: { id: id } });
  }

  async getDocuments(oid: number, owner: DocumentOwner): Promise<Documents[]> {
    const documenst = await this.repo.find({
      where: { documentOwnerId: oid, documentOwner: owner },
    });
    const base = this.configService.get<string>('baseUrl');
    documenst.forEach((a) => {
      a.url = `${base}document/downloadDocument/attachment/${a.id}`;
      
    });

    return documenst;
  }
}
