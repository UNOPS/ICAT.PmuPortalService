import { Body, Controller, Get, Param, Put, Res } from '@nestjs/common';
import { Post } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { AuthService } from './auth.service';
import { UsersService } from 'src/users/users.service';
import { AuthCredentialDto } from './Dto/auth.credential.dto';
import { ResetPassword } from './Dto/reset.password.dto';
import { ForgotPasswordDto } from './Dto/forgot.passowrd.dto';
import { EmailNotificationService } from 'src/notifications/email.notification.service';
import { AuditService } from 'src/audit/audit.service';
import { AuditDto } from 'src/audit/dto/audit-dto';
import { v4 as uuidv4 } from 'uuid';

@Controller('auth')
export class AuthController {
  username: string;
  constructor(
    private authService: AuthService,
    private usersService: UsersService,
    private configService: ConfigService,
    private emailService: EmailNotificationService,

    private readonly auditService: AuditService,
  ) {}

  @Post('auth/login')
  async login(@Body() authCredentialDto: AuthCredentialDto): Promise<any> {
    this.username = authCredentialDto.username;

    const audit: AuditDto = new AuditDto();
    audit.action = authCredentialDto.username + ' Is Logged';
    audit.comment = 'User Logged';
    audit.actionStatus = 'Logged';
    audit.userName = authCredentialDto.username;

    this.auditService.create(audit);

    return await this.authService.login(authCredentialDto);
  }

  @Get('auth/validate-reset-password/:email/:token')
  async validateResetPassword(
    @Param('email') email: string,
    @Param('token') token: string,
  ): Promise<boolean> {
    return await this.usersService.validateResetPasswordRequest(email, token);
  }

  @Put('auth/reset-password')
  async resetPassword(@Body() resetPwd: ResetPassword): Promise<boolean> {
    if (
      await this.usersService.validateResetPasswordRequest(
        resetPwd.email,
        resetPwd.token,
      )
    ) {

      let res = await this.usersService.resetPassword(
        resetPwd.email,
        resetPwd.password,
        resetPwd.code,
      );

      return res;
    }
    return false;
  }

  @Post('auth/forgot-password')
  async forgotPassword(
    @Body() forgotparam: ForgotPasswordDto,
    @Res() response: any,
  ): Promise<any> {
    let user = await this.usersService.findUserByEmail(forgotparam.email);
  
    if (!user) {
      return response.status(400).send({
        status: 0,
        message: 'Invalid Email/User ID',
      });
    }
  
    const pwdResetToken = uuidv4();
    const tokenExpiration = new Date();
    tokenExpiration.setHours(tokenExpiration.getHours() + 1); // Expires in 1 hour
  
    await this.usersService.updateChangePasswordToken(user.id, pwdResetToken, tokenExpiration);
      const resetPwdUrl = `${process.env.PMU_LOGIN_URL}/reset-password?token=${pwdResetToken}`;
  
    const emailTemplate = `
      Dear ${user.firstName},<br/><br/>
      We received a request to reset your password.<br/>
      Please <a href="${resetPwdUrl}">click here</a> to reset your password.<br/>
      This link will expire in 1 hour.<br/><br/>
      If you did not request this, please ignore this email.
    `;
  
    await this.emailService.sendMail(
      user.email,
      'Password Reset Request',
      '',
      emailTemplate
    );
  
    return response.status(200).send({
      status: 1,
      message: 'Password reset link has been sent to your email.',
    });
  }
  
}
