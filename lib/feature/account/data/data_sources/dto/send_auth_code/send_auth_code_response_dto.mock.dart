part of 'send_auth_code_response_dto.dart';

extension SendAuthCodeResponseDtoMock on SendAuthCodeResponseDto {
  /// 성공 응답
  static SendAuthCodeResponseDto success() {
    return SendAuthCodeResponseDto(
      status: true,
      message: '',
    );
  }

  /// 실패 응답
  static SendAuthCodeResponseDto failure() {
    return SendAuthCodeResponseDto(
      status: false,
      message: '중복된 번호입니다.',
    );
  }
}
