import { Body, Controller, Get, Post, Query, Request, UseGuards } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import {
  Crud,
  CrudController,
  CrudRequest,
  Override,
  ParsedBody,
  ParsedRequest,
} from '@nestjsx/crud';
import { AuditService } from 'src/audit/audit.service';
import { AuditDto } from 'src/audit/dto/audit-dto';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { Repository } from 'typeorm';
import { CountryService } from './country.service';
import { CountrySector } from './entity/country-sector.entity';
import { Country } from './entity/country.entity';

@Crud({
  model: {
    type: Country,
  },
  query: {
    join: {
      countrysector: {
        eager: true,
      },
      sector: {
        eager: true,
      },
      institution: {
        eager: true,
      },
    },
  },
})
@Controller('country')
export class CountryController implements CrudController<Country> {
  constructor(
    public service: CountryService,
    @InjectRepository(Country)
    public CountryRepo: Repository<Country>,
    @InjectRepository(CountrySector)
    public CountrySectorRepo: Repository<CountrySector>,
    private readonly auditService: AuditService,
  ) {}

  get base(): CrudController<Country> {
    return this;
  }

  @UseGuards(JwtAuthGuard)
  @Override()
  async updateOne(
    @Request() request,
    @ParsedRequest() req: CrudRequest,
    @ParsedBody() dto: Country,
  ) {
    const coun_sec = dto.countrysector;

    const old_countrysector = (
      await this.CountryRepo.findOne({ where: { id: dto.id } })
    ).countrysector;

    const sec = old_countrysector.filter(
      (a) => !coun_sec.some((b) => a.sectorId == b.sector.id),
    );

    sec.forEach((a) => this.CountrySectorRepo.delete(a.id));
    const coun = await this.base.updateOneBase(req, dto);
    coun_sec.forEach((a) => {
      (a.countryId = dto.id), this.CountrySectorRepo.save(a);
    });

    return coun;
  }

  @UseGuards(JwtAuthGuard)
  @Override()
  async createOne(
    @Request() request,
    @ParsedRequest() req: CrudRequest,
    @ParsedBody() dto: Country,
  ): Promise<Country> {
    dto.isSystemUse = true;

    let x = 0;

    dto.countrysector.map((a) => {
      a.country.id = dto.id;
      a.sector.id = dto.countrysector[x].sector.id;
      x++;
    });

    try {
      dto.countrysector.map(async (a) => {
        const lms = await this.CountrySectorRepo.save(await a);
      });
    } catch (error) {}

    const coun = await this.base.createOneBase(req, dto);

    const audit: AuditDto = new AuditDto();
    audit.action = coun.name + ' Country Activated';
    audit.comment = 'Country Activated';
    audit.actionStatus = 'Activated';
    this.auditService.create(audit);

    return coun;
  }

  @Get('country1')
  async getCountry(@Query('countryId') countryId: number): Promise<any> {
    return await this.service.getCountry(countryId);
  }
  @Post('oneCountry')
  async updatecountry(
    @Body() dto: Country,
  ){
    this.CountryRepo.save(dto)
  }

  @Get('country-sector')
  async getCountrySector(): Promise<any> {
    return this.CountrySectorRepo.find();
  }
}
