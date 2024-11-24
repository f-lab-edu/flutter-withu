part of 'login_request_dto.dart';

extension LoginRequestDtoMock on LoginRequestDto {
  static LoginRequestDto mock() {
    return LoginRequestDto(
      accountType: AccountType.company,
      loginType: LoginType.email,
      loginId: 'test@test.com',
      password: '123qwe!@',
    );
  }
}
