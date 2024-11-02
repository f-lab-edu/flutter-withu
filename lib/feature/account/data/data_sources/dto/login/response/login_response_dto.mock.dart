part of 'login_response_dto.dart';

extension LoginResponseDtoMock on LoginResponseDto {
  static LoginResponseDto success() {
    return LoginResponseDto(
      status: true,
      message: "로그인 성공",
      userId: "1",
      loginId: "test@test.com",
      name: "홍길동",
      sessionId: "test-session-id",
      accountId: 1,
      accountType: AccountType.company,
    );
  }

  static LoginResponseDto failure() {
    return LoginResponseDto(
      status: false,
      message: "존재하지 않는 계정입니다.",
    );
  }
}
