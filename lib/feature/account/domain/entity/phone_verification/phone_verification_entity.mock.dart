part of 'phone_verification_entity.dart';

extension PhoneVerificationEntityMock on PhoneVerificationEntity {
  static PhoneVerificationEntity serverError() {
    return PhoneVerificationEntity(
        status: false, message: StringRes.serverError.tr);
  }
}
