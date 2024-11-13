part of 'auth_code_verification_entity.dart';

extension AuthCodeVerificationEntityParser on AuthCodeVerificationEntity {

  /// Entity -> Dto
  AuthCodeVerificationRequestDto toDto() {
    return AuthCodeVerificationRequestDto(
      phone: phone,
      authCode: authCode,
    );
  }
}
