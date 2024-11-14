part of 'auth_code_verification_entity.dart';

extension AuthCodeVerificationEntityMock on AuthCodeVerificationEntity {
  static AuthCodeVerificationEntity validMock() {
    return AuthCodeVerificationEntity(
      phone: '01012345678',
      authCode: '123456',
    );
  }

  static AuthCodeVerificationEntity invalidMock() {
    return AuthCodeVerificationEntity(
      phone: '01012345678',
      authCode: '1234',
    );
  }
}
