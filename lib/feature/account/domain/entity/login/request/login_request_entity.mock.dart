part of 'login_request_entity.dart';

extension LoginRequestEntityMock on LoginRequestEntity {
  static LoginRequestEntity mock() {
    return LoginRequestEntity(
      accountType: AccountType.company,
      loginType: LoginType.email,
      loginId: 'test@test.com',
      password: '123qwe!@',
    );
  }
}
