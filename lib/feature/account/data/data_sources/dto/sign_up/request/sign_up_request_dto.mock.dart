part of 'sign_up_request_dto.dart';

extension SignUpRequestDtoMock on SignUpRequestDto {
  static SignUpRequestDto mock() {
    return SignUpRequestDto(
      loginId: 'test@test.com',
      password: '123qwe!@',
      type: LoginType.email,
      gender: GenderType.man,
      name: '김땡땡',
      birthDate: DateTime.now(),
      cellPhoneNo: '01012345678',
    );
  }
}
