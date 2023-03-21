import { User } from './../users/user.entity';
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Institution } from './institution.entity';
import {
  IPaginationOptions,
  paginate,
  Pagination,
} from 'nestjs-typeorm-paginate';
import { InstitutionType } from './institution.type.entity';
import { UserType } from 'src/users/user.type.entity';
import { Country } from 'src/country/entity/country.entity';

@Injectable()
export class InstitutionService extends TypeOrmCrudService<Institution> {
  constructor(@InjectRepository(Institution) repo) {
    super(repo);
  }

  async softDelete(id: number) {
    this.repo.softDelete({ id });
    return;
  }

  async getInstitutionDetails(
    options: IPaginationOptions,
    filterText: string,
    countryId: number,
  ): Promise<Pagination<Institution>> {
    let filter = '';

    if (filterText != null && filterText != undefined && filterText != '') {
      filter =
        '(ins.name LIKE :filterText OR ins.address LIKE :filterText OR type.name LIKE :filterText OR user.firstName LIKE :filterText OR user.lastName LIKE :filterText OR con.name LIKE :filterText)';
    }

    if (countryId != 0) {
      if (filter) {
        filter = `con.id  = :countryId`;
      } else {
        filter = `con.id  = :countryId`;
      }
      const data = this.repo
        .createQueryBuilder('ins')
        .innerJoinAndMapMany(
          'ins.countries',
          Country,
          'con',
          'ins.id = con.institutionId',
        )
        .leftJoinAndMapOne(
          'ins.type',
          InstitutionType,
          'type',
          'type.id = ins.typeId',
        )
        .leftJoinAndMapMany(
          'ins.user',
          User,
          'user',
          'ins.id = user.institutionId and( user.userTypeId = 1 or user.userTypeId = 4)',
        )
        .leftJoinAndMapOne(
          'user.userType',
          UserType,
          'userType',
          'userType.id =user.userTypeId',
        )

        .where(filter, {
          filterText: `%${filterText}%`,
          countryId,
        })
        .orderBy('ins.status', 'ASC');
      const result = await paginate(data, options);

      if (result) {
        return result;
      }
    } else {
      const data = this.repo
        .createQueryBuilder('ins')
        .leftJoinAndMapMany(
          'ins.countries',
          Country,
          'con',
          'ins.id = con.institutionId',
        )
        .leftJoinAndMapOne(
          'ins.type',
          InstitutionType,
          'type',
          'type.id = ins.typeId',
        )
        .leftJoinAndMapMany(
          'ins.user',
          User,
          'user',
          'ins.id = user.institutionId and( user.userTypeId = 1 or user.userTypeId = 4)',
        )
        .leftJoinAndMapOne(
          'user.userType',
          UserType,
          'userType',
          'userType.id =user.userTypeId',
        )

        .where(filter, {
          filterText: `%${filterText}%`,
        })
        .orderBy('ins.status', 'ASC');
      const result = await paginate(data, options);

      if (result) {
        return result;
      }
    }
  }

  async getPmuAdminAssignInstitution(
    options: IPaginationOptions,
  ): Promise<Pagination<Institution>> {
    let filter = '';

    if (filter) {
      filter = `con.id  = :countryId`;
    } else {
      filter = `user.institutionId IS NULL and user.userTypeId = 1`;
    }

    const data = this.repo
      .createQueryBuilder('ins')
      .leftJoinAndMapMany(
        'ins.countries',
        Country,
        'con',
        'ins.id = con.institutionId',
      )

      .leftJoinAndMapOne(
        'ins.type',
        InstitutionType,
        'type',
        'type.id = ins.typeId',
      )
      .leftJoinAndMapMany(
        'ins.user',
        User,
        'user',
        'ins.id = user.institutionId',
      )
      .leftJoinAndMapOne(
        'user.userType',
        UserType,
        'userType',
        'userType.id =user.userTypeId',
      )

      .where(filter, {})
      .orderBy('ins.status', 'ASC');

    const result = await paginate(data, options);

    if (result) {
      return result;
    }
  }
}
