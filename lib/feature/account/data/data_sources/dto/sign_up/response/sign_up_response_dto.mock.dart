part of 'sign_up_response_dto.dart';

extension SignUpResponseDtoMock on SignUpResponseDto {
  static BaseResponseDto success() {
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
    );
  }

  static BaseResponseDto failure() {
    return BaseResponseDtoMock.mock(
      SignUpResponseData(
        status: false,
        message: '회원가입에 실패하였습니다.',
        loginId: '',
        name: '',
        sessionId: '',
        userId: null,
        birthDate: null,
        loginType: null,
      ),
    );
  }
}
