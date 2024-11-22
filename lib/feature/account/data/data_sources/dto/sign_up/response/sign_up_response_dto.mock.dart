part of 'sign_up_response_dto.dart';

extension SignUpResponseDtoMock on SignUpResponseDto {
  static Map<String, dynamic> success() {
    return BaseResponseDtoMock.mock(
      SignUpResponseData(
        status: true,
        message: '',
        userId: 1,
        loginId: 'test@test.com',
        name: '김영건',
        sessionId: 'test-session-id',
        birthDate: DateTime(2020, 1, 1),
        loginType: LoginType.email,
      ),
    ).toJson(
      (data) => data.toJson(),
    );
  }
}
