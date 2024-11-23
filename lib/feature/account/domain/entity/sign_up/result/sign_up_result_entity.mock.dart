part of 'sign_up_result_entity.dart';

extension SignUpResultEntityMock on SignUpResultEntity {
  static SignUpResultEntity success() {
    return SignUpResultEntity(
      status: true,
    );
  }

  static SignUpResultEntity failure() {
    return SignUpResultEntity(
      status: false,
      message: '회원 가입 실패',
    );
  }

  static SignUpResultEntity serverError() {
    return SignUpResultEntity(
      status: false,
      message: StringRes.serverError.tr,
    );
  }
}
