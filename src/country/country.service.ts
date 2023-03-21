import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Sector } from 'src/master-data/sector/sector.entity';
import { Repository } from 'typeorm';
import { CountrySector } from './entity/country-sector.entity';
import { Country } from './entity/country.entity';

@Injectable()
export class CountryService extends TypeOrmCrudService<Country> {
  constructor(
    @InjectRepository(Country) repo,
    @InjectRepository(CountrySector)
    public CountrySectorRepo: Repository<CountrySector>,
  ) {
    super(repo);
  }

  async getCountry(countryId: number) {
    let data;
    if (countryId != 0) {
      data = this.repo
        .createQueryBuilder('cou')
        .leftJoinAndMapMany(
          'cou.countrysector',
          CountrySector,
          'cs',
          `cou.id = cs.countryId `,
        )
        .leftJoinAndMapOne('cs.sector', Sector, 'sec', `sec.id = cs.sectorId`)

        .where(`cou.id = ${countryId}`);
    } else {
    }
    return data.getOne();
  }
}
