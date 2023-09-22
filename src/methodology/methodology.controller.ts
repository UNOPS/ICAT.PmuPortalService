import { Controller, Get, Query, Request, UseGuards } from '@nestjs/common';
import { Crud, CrudController } from '@nestjsx/crud';
import { Methodology } from './entity/methodology.entity';
import { MethodologyService } from './methodology.service';
import { TokenDetails, TokenReqestType } from 'src/token_details';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';

@Crud({
  model: {
    type: Methodology,
  },
  query: {
    join: {
      country: {
        eager: true,
      },
      mitigationActionType: {
        eager: true,
      },
      applicability: {
        eager: true,
      },
      sector: {
        eager: true,
      },
      method: {
        eager: true,
      },
    },
  },
})
@Controller('methodology')
export class MethodologyController implements CrudController<Methodology> {
  constructor(
    public service: MethodologyService,
    private readonly tokenDetails: TokenDetails,) {}

  get base(): CrudController<Methodology> {
    return this;
  }

  @UseGuards(JwtAuthGuard)
  @Get(
    'methodology/methodologyinfo/:page/:limit/:sectorId/:filterText/:developedBy',
  )
  async getMethoDetails(
    @Request() request,
    @Query('page') page: number,
    @Query('limit') limit: number,
    @Query('filterText') filterText: string,
    @Query('sectorId') sectorId: number,
    @Query('developedBy') developedBy: string,
  ): Promise<any> {

    let userName: string;
    let role: string;
    
    [userName, role] = this.tokenDetails.getDetails([
      TokenReqestType.username,
      TokenReqestType.role,
    ]);
    return await this.service.getMethodologyDetails(
      {
        limit: limit,
        page: page,
      },
      filterText,
      sectorId,
      developedBy,
      userName,
      role,
    );
  }
}
