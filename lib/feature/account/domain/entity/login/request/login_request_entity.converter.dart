part of 'login_request_entity.dart';

extension LoginRequestEntityConverter on LoginRequestEntity {
  /// entity -> dto
  LoginRequestDto toDto() {
    return LoginRequestDto(
      accountType: accountType,
      loginType: loginType,
      loginId: loginId,
      password: password,
    );
  }
}
