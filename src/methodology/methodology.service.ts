import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import {
  IPaginationOptions,
  paginate,
  Pagination,
} from 'nestjs-typeorm-paginate';
import { Methodology } from './entity/methodology.entity';
import { Sector } from 'src/master-data/sector/sector.entity';
import { Country } from 'src/country/entity/country.entity';
import { User } from 'src/users/user.entity';
import { Repository } from 'typeorm';

@Injectable()
export class MethodologyService extends TypeOrmCrudService<Methodology> {
  constructor(
    @InjectRepository(Methodology) repo,
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
    @InjectRepository(Country)
    private readonly countryRepository: Repository<Country>,
    ) {
    super(repo);
  }

  async getMethodologyDetails(
    options: IPaginationOptions,
    filterText: string,
    sectorId: number,
    developedBy: string,
    userName: string,
    role: string,
  ): Promise<Pagination<Methodology>> {

    let filter = '';
    let newarray = new Array();
    if(role =="PMU Admin"){
      let user = await this.userRepository.findOne({
        where: { email: userName },
      });
      let country = await this.countryRepository.find({where:{institution :user.institution}})
      
      for (let co of country) {
        newarray.push(co.id)
      }
      if (filter) {
        filter = `${filter} and me.countryId IN (:...newarray)`;
      } else {
        filter = 'me.countryId IN(:...newarray)';
      }
    }
    

    if (filterText != null && filterText != undefined && filterText != '') {
      if(filter){
        filter =
        `${filter} (and me.version LIKE :filterText OR me.developedBy LIKE :filterText OR me.name LIKE :filterText OR me.applicableSector LIKE :filterText OR me.documents LIKE :filterText)`;
      }else{
        filter =
        `${filter} (me.version LIKE :filterText OR me.developedBy LIKE :filterText OR me.name LIKE :filterText OR me.applicableSector LIKE :filterText OR me.documents LIKE :filterText)`;
      }
  
    }
    if (sectorId != 0) {
      if (filter) {
        filter = `${filter} and me.sectorId=:sectorId`;
      } else {
        filter = `me.sectorId = :sectorId`;
      }
    }

    if (developedBy != '0') {
      if (filter) {
        filter = `${filter} and me.developedBy=:developedBy`;
      } else {
        filter = `me.developedBy = :developedBy`;
      }
    }

    const data = this.repo
      .createQueryBuilder('me')
      .leftJoinAndMapOne(
        'me.sectorId',
        Sector,
        'sector',
        'sector.id = me.sectorId',
      )
      .leftJoinAndMapOne(
        'me.countryId',
        Country,
        'country',
        'country.id = me.countryId',
      )
      .where(filter, {
        filterText: `%${filterText}%`,
        sectorId,
        developedBy,
        newarray
      });

    const result = await paginate(data, options);

    if (result) {
      return result;
    }
  }
}
