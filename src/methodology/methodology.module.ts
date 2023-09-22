import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Methodology } from './entity/methodology.entity';
import { MethodologyController } from './methodology.controller';
import { MethodologyService } from './methodology.service';
import { TokenDetails } from 'src/token_details';
import { User } from 'src/users/user.entity';
import { Country } from 'src/country/entity/country.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Methodology,User,Country])],
  controllers: [MethodologyController],
  providers: [MethodologyService,TokenDetails],
  exports: [MethodologyService],
})
export class MethodologyModule {}
