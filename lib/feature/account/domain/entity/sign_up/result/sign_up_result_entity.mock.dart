part of 'sign_up_result_entity.dart';

extension SignUpResultEntityMock on SignUpResultEntity {
  static SignUpResultEntity serverError() {
    return SignUpResultEntity(
      status: false,
      message: StringRes.serverError.tr,
    );
  }
}
