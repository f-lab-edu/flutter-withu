part of 'phone_verification_entity.dart';

extension PhoneVerificationEntityParser on PhoneVerificationEntity {

  /// Dto -> Entity
  static PhoneVerificationEntity fromDto(VerifyPhoneResponseDto dto) {
    return PhoneVerificationEntity(
      status: dto.status,
      message: dto.message,
    );
  }
}
