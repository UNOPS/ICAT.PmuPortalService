import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CreateUserDto } from './dto/create-user.dto';
import { User } from './user.entity';
import * as bcript from 'bcrypt';
import { UserType } from './user.type.entity';
import { ConfigService } from '@nestjs/config';
import { Institution } from 'src/institution/institution.entity';
import { RecordStatus } from 'src/shared/entities/base.tracking.entity';
import { EmailNotificationService } from 'src/notifications/email.notification.service';
import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Country } from 'src/country/entity/country.entity';
import {
  IPaginationOptions,
  paginate,
  Pagination,
} from 'nestjs-typeorm-paginate';

const { v4: uuidv4 } = require('uuid');

@Injectable()
export class UsersService extends TypeOrmCrudService<User> {
  constructor(
    @InjectRepository(User) repo,
    @InjectRepository(User)
    private readonly usersRepository: Repository<User>,
    @InjectRepository(Institution)
    private readonly institutionRepository: Repository<Institution>,
    @InjectRepository(UserType)
    private readonly usersTypeRepository: Repository<UserType>,
    private readonly emaiService: EmailNotificationService,
    private configService: ConfigService,
    @InjectRepository(Country)
    private readonly countryRepo: Repository<Country>,
  ) {
    super(repo);
  }

  async create(createUserDto: CreateUserDto): Promise<User> {
    

    const userType = await this.usersTypeRepository.findOne(
      createUserDto.userType['id'],
    );

    let countryId = null;
    let insId = null;
    if (createUserDto.userType['id'] == 3) {
      
      countryId = null;
      insId = createUserDto.institution['id'];
      
    } else if (createUserDto.userType['id'] == 2) {
      countryId = createUserDto.country['id'];
      insId = 0;
      const cou = await this.countryRepo.findOne(countryId);
      cou.isCA = true;
      this.countryRepo.save(cou);
    } else if (createUserDto.userType['id'] == 1) {
      countryId = null;
      insId = createUserDto.institution['id'];
    } else if (createUserDto.userType['id'] == 5) {
      countryId = null;
      insId = createUserDto.institution['id'];
    }

    const institution = await this.institutionRepository.findOne(insId);

    const country = await this.countryRepo.findOne(countryId);

    const newUser = new User();

    newUser.firstName = createUserDto.firstName;
    newUser.lastName = createUserDto.lastName;
    newUser.username = createUserDto.username;
    newUser.email = createUserDto.email;
    newUser.mobile = createUserDto.mobile;
    newUser.status = RecordStatus.Active;
    newUser.telephone = createUserDto.telephone;
    newUser.userType = userType;
    newUser.institution = institution;
    newUser.country = country;
    newUser.mrvInstitution = createUserDto.mrvInstitution;
    newUser.salt = await bcript.genSalt();

    const newUUID = uuidv4();
    const newPassword = ('' + newUUID).substr(0, 6);
    createUserDto.password = newPassword;
    newUser.password = await this.hashPassword(
      createUserDto.password,
      newUser.salt,
    );
    newUser.resetToken = '';

    const newUserDb = await this.usersRepository.save(newUser);
    let systemLoginUrl = '';
    if (newUser.userType.id == 2) {
      const url = 'https://icat-ca-tool.climatesi.com/icat-country-app/';
      systemLoginUrl = url;
    } else {
      const url = 'https://icat-ca-tool.climatesi.com/pmu-app/login';
      systemLoginUrl = url;
    }

    const template =
      'Dear ' +
      newUserDb.firstName +
      ' ' +
      newUserDb.lastName +
      ' <br/>Your username is ' +
      newUserDb.email +
      ' and your login password is : ' +
      newPassword +
      ' <br/>System login url is' +
      ' <a href="' +
      systemLoginUrl +
      '">' +
      systemLoginUrl +
      '</a>' +
      '<br/>' +
      '<br/>Best regards' +
      '<br/>Software support team';

    this.emaiService.sendMail(
      newUserDb.email,
      'Your credentials for ICAT system',
      '',
      template,
    );

    newUserDb.password = '';
    newUserDb.salt = '';

    return newUserDb;
  }

  async chnageStatus(userId: number, status: number): Promise<User> {
    const user = await this.usersRepository.findOne({ where: { id: userId } });
    user.status = status;
    return this.usersRepository.save(user);
  }

  async chnagePassword(userId: number, newPassword: string): Promise<User> {
    const user = await this.usersRepository.findOne({ where: { id: userId } });
    user.password = newPassword;
    return this.usersRepository.save(user);
  }

  async updateChnagePasswordToken(
    userId: number,
    newToken: string,
  ): Promise<User> {
    const systemLoginUrl = this.configService.get<string>('LOGIN_URL');
    const user = await this.usersRepository.findOne({ where: { id: userId } });
    user.resetToken = newToken;
    const newUUID = uuidv4();
    const newPassword = ('' + newUUID).substr(0, 6);
    user.password = await this.hashPassword(user.password, user.salt);
    user.password = newPassword;
    this.usersRepository.save(user);

    const template =
      'Dear ' +
      user.firstName +
      ' ' +
      user.lastName +
      ' <br/>Your username is ' +
      user.email +
      '<br/> your login password is : ' +
      newPassword +
      ' <br/>System login url is ' +
      '<a href="systemLoginUrl">' +
      systemLoginUrl;

    this.emaiService.sendMail(
      user.email,
      'Your credentials for ICAT system',
      '',
      template,
    );

    return this.usersRepository.save(user);
  }

  async findAll(): Promise<User[]> {
    return this.usersRepository.find();
  }

  findByUserName(userName: string): Promise<User> {
    return this.usersRepository.findOne({ where: { username: userName } });
  }

  async validateUser(userName: string, password: string): Promise<boolean> {
    const user = await this.usersRepository.findOne({
      where: { username: userName },
    });

    

    return (await user).validatePassword(password);
  }

  async isUserAvailable(userName: string): Promise<any> {
    const user = await this.usersRepository.findOne({
      where: { username: userName },
    });
    if (user) {
      

      return user;
    } else {
      

      return user;
    }
  }

  async findUserByUserName(userName: string): Promise<any> {
    return await this.usersRepository
      .findOne({ where: { username: userName } })
      .then((value) => {
        
        if (!!value) {
          

          return value.id;
        } else {
          return 0;
        }
      })
      .catch(() => {
        return 0;
      });
  }

  async findUserByEmail(email: string): Promise<any> {
    return await this.usersRepository
      .findOne({ where: { email: email } })
      .then((value) => {
        
        if (!!value) {
          

          return value;
        } else {
          return false;
        }
      })
      .catch((e) => {
        
        return false;
      });
  }

  async remove(id: number): Promise<void> {
    await this.usersRepository.delete(id + '');
  }

  async validateResetPasswordRequest(
    email: string,
    token: string,
  ): Promise<boolean> {
    const user = await this.usersRepository.findOne({
      where: { email: email },
    });
    

    if (user && user.resetToken === token) {
      

      return true;
    } else {
      

      return false;
    }
  }

  async resetPassword(email: string, password: string): Promise<boolean> {
    const user = await this.usersRepository.findOne({
      where: { email: email },
    });
    
    if (user) {
      const salt = await bcript.genSalt();
      
      user.salt = salt;
      user.password = await this.hashPassword(password, salt);
      

      await this.usersRepository.save(user);

      

      await this.updateChnagePasswordToken(user.id, '');

      

      return true;
    }
    

    return false;
  }

  private async hashPassword(password: string, salt: string): Promise<string> {
    return await bcript.hash(password, salt);
  }

  async getUserDetails(
    options: IPaginationOptions,
    filterText: string,
    userTypeId: number,
  ): Promise<Pagination<User>> {
    
    let filter = '';

    if (filterText != null && filterText != undefined && filterText != '') {
      filter =
        '(user.firstName LIKE :filterText OR user.lastName LIKE :filterText OR user.telephone LIKE :filterText OR user.email LIKE :filterText OR ins.name LIKE :filterText OR type.name LIKE :filterText)';
    }

    if (userTypeId != 0) {
      if (filter) {
        filter = `${filter} and user.userTypeId = :userTypeId`;
      } else {
        filter = `user.userTypeId = :userTypeId`;
      }
    }

    const data = this.repo
      .createQueryBuilder('user')
      .leftJoinAndMapOne(
        'user.institution',
        Institution,
        'ins',
        'ins.id = user.institutionId',
      )
      .leftJoinAndMapOne(
        'user.userType',
        UserType,
        'type',
        'type.id = user.userTypeId',
      )

      .where(filter, {
        filterText: `%${filterText}%`,
        userTypeId,
      })
      .orderBy('user.status', 'ASC');

    const result = await paginate(data, options);

    if (result) {
      return result;
    }
  }

  async findUserByUserType() {
    
    const data = await this.repo
      .createQueryBuilder('u')
      .select('*')
      .where('u.userTypeId = 2')
      .execute();
    return data;
  }
}
