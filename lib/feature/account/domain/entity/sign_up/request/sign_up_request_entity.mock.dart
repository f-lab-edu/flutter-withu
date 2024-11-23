part of 'sign_up_request_entity.dart';

extension SignUpRequestEntityMock on SignUpRequestEntity {
  static SignUpRequestEntity mock() {
    return SignUpRequestEntity(
      loginId: const Email(value: 'test@test.com'),
      password: const Password('123qwe!@'),
      loginType: LoginType.email,
      gender: GenderType.man,
      name: const Name('김땡땡'),
      birthDate: const BirthDate('19930604'),
      phone: const Phone('01012345678'),
    );
  }
}
