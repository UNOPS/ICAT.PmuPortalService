import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CreateUserDto } from './dto/create-user.dto';
import { User } from './user.entity';
import * as bcript from 'bcrypt';
import { ResetPassword } from 'src/auth/Dto/reset.password.dto';
import { RSA_PSS_SALTLEN_MAX_SIGN } from 'constants';
import { UserType } from './user.type.entity';
import { MailerService } from '@nestjs-modules/mailer';
import { ConfigService } from '@nestjs/config';
import { Institution } from 'src/institution/institution.entity';
import { RecordStatus } from 'src/shared/entities/base.tracking.entity';
import { EmailNotificationService } from 'src/notifications/email.notification.service';
import { TypeOrmCrudService } from '@nestjsx/crud-typeorm';
import { Country } from 'src/country/entity/country.entity';
import { IPaginationOptions, paginate, Pagination } from 'nestjs-typeorm-paginate';
import { InstitutionCategory } from 'src/institution/institution.category.entity';
import { InstitutionType } from 'src/institution/institution.type.entity';
import { use } from 'passport';

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

    let userType = await this.usersTypeRepository.findOne(
      createUserDto.userType['id'],
    );

   
    let countryId = null;
    let insId = null;
    if (createUserDto.userType['id'] == 3) {
      countryId = null;
      insId = createUserDto.institution['id'];
    }
    else if (createUserDto.userType['id'] == 2) {
      countryId = createUserDto.country['id'];
      insId = 0;
      let cou = await this.countryRepo.findOne(countryId);
      cou.isCA = true;
      this.countryRepo.save(cou)
    }

    else if (createUserDto.userType['id'] == 1) {
      countryId = null;
      insId = createUserDto.institution['id'];
    }

    else if (createUserDto.userType['id'] == 5) {
      countryId = null;
      insId = createUserDto.institution['id'];
    }


    let institution = await this.institutionRepository.findOne(
      insId
    );

    let country = await this.countryRepo.findOne(countryId);

    let newUser = new User();

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

    let newUUID = uuidv4();
    let newPassword = ('' + newUUID).substr(0, 6);
    createUserDto.password = newPassword;
    newUser.password = await this.hashPassword(
      createUserDto.password,
      newUser.salt,
    );
    newUser.resetToken = '';

    var newUserDb = await this.usersRepository.save(newUser);
    let systemLoginUrl = '';
    if (newUser.userType.id == 2) {
      const url = process.env.COUNTRY_RESET_PASSWORD_URL;
      systemLoginUrl = url;
    }
    else {
      const url = process.env.PMU_RESET_PASSWORD_URL
      systemLoginUrl = url;
    }

    var template =
      'Dear ' +
      newUserDb.firstName +
      ' ' +
      newUserDb.lastName +
      ' <br/>Your username is ' +
      newUserDb.email +
      '<br/> your login Code is : ' +
      newPassword +
      ' <br/>System login url is' + ' <a href="' + systemLoginUrl + '">' + systemLoginUrl + '</a>' +
      '<br/>' +
      '<br/>Best regards' +
      '<br/>Software support team';

    this.emaiService.sendMail(
      newUserDb.email,
      'Your credentials for ICAT system',
      '',
      template,
    );


    return newUserDb;
  }


  async chnageStatus(userId: number, status: number): Promise<User> {
    let user = await this.usersRepository.findOne(userId);
    user.status = status;
    return this.usersRepository.save(user);
  }

  async chnagePassword(userId: number, newPassword: string): Promise<User> {
    let user = await this.usersRepository.findOne(userId);
    user.password = newPassword;
    return this.usersRepository.save(user);
  }

  async updateChnagePasswordToken(
    userId: number,
    newToken: string,
  ): Promise<User> {
    let systemLoginUrl = this.configService.get<string>('PMU_LOGIN_URL');
    let user = await this.usersRepository.findOne(userId);
    user.resetToken = newToken;
    let newUUID = uuidv4();
    let newPassword = ('' + newUUID).substr(0, 6);
    user.password = await this.hashPassword(
      user.password,
      user.salt,
    );
    user.password = newPassword;
    this.usersRepository.save(user);

    var template =
      'Dear ' + user.firstName + " " + user.lastName +
      ' <br/>Your username is ' +
      user.email +
      '<br/> your login password is : ' +
      newPassword +
      ' <br/>System login url is ' + '<a href="systemLoginUrl">' +
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
    return this.usersRepository.findOne({ username: userName });
  }

  async validateUser(userName: string, password: string): Promise<boolean> {
    const user = await this.usersRepository.findOne({ username: userName });


    return (await user).validatePassword(password);
  }


  async isUserAvailable(userName: string): Promise<any> {
   
    let user = await this.usersRepository.findOne({ username: userName });
    if (user) {

      return user;
    } else {

      return user;
    }
  }

  async findUserByUserName(userName: string): Promise<any> {
    return await this.usersRepository
      .findOne({ username: userName })
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
  async findUserByEmail(email: string): Promise<User | undefined> {
    return this.usersRepository.findOne({ where: { email } });
  }

  async remove(id: number): Promise<void> {
    await this.usersRepository.delete(id + '');
  }

  async validateResetPasswordRequest(
    email: string,
    token: string,
  ): Promise<boolean> {
    const user = await this.usersRepository.findOne({ email: email });


    if (user && user.resetToken === token) {
    

      return true;
    } else {

      return false;
    }
  }

  async updateChangePasswordToken(
    userId: string,
    resetToken: string,
    tokenExpiration: Date,
  ): Promise<User> {
    const user = await this.usersRepository.findOne(userId);
    
    if (!user) {
      throw new Error('User not found');
    }

    user.resetToken = resetToken;
    user.resetTokenExpiration = tokenExpiration;

    return await this.usersRepository.save(user);
  }

  async resetPassword(email: string, password: string, token: string): Promise<boolean> {
    let systemLoginUrl;
    let user = await this.usersRepository.findOne({ email: email });
  
    if (!user) {
      return false;
    }
  
    if (user.resetToken !== token || new Date() > user.resetTokenExpiration) {
      return false;
    }
  
    let salt = await bcript.genSalt();
    user.salt = salt;
    user.password = await this.hashPassword(password, user.salt);
  
    user.resetToken = null;
    user.resetTokenExpiration = null;
  
    await this.usersRepository.save(user);
  
    const url = user.userType.id === 2 ? process.env.COUNTRY_LOGIN_URL : process.env.PMU_LOGIN_URL;
    systemLoginUrl = url;
  
    const template =
      `Dear ${user.firstName} ${user.lastName},<br/>
      Your username is ${user.email}<br/>
      Your new login password has been reset.<br/>
      System login URL: <a href="${systemLoginUrl}">${systemLoginUrl}</a>`;
  
    await this.emaiService.sendMail(user.email, 'Your credentials for ICAT system', '', template);
  
    return true;
  }
  

  private async hashPassword(password: string, salt: string): Promise<string> {
    return await bcript.hash(password, salt);
  }


  async getUserDetails(

    options: IPaginationOptions,
    filterText: string,
    userTypeId: number,
  ): Promise<Pagination<User>> {
    let filter: string = '';

    if (filterText != null && filterText != undefined && filterText != '') {
      filter =
        '(user.firstName LIKE :filterText OR user.lastName LIKE :filterText OR user.telephone LIKE :filterText OR user.email LIKE :filterText OR ins.name LIKE :filterText OR type.name LIKE :filterText)'
    }

    if (userTypeId != 0) {
      if (filter) {
        filter = `${filter} and user.userTypeId = :userTypeId`;
      } else {
        filter = `user.userTypeId = :userTypeId`;
      }
    }

    let data = this.repo
      .createQueryBuilder('user')
      .leftJoinAndMapOne('user.institution', Institution, 'ins', 'ins.id = user.institutionId',)
      .leftJoinAndMapOne('user.userType', UserType, 'type', 'type.id = user.userTypeId',)

      .where(filter, {
        filterText: `%${filterText}%`,
        userTypeId,
      }).orderBy('user.status', 'ASC');


    let result = await paginate(data, options);

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
