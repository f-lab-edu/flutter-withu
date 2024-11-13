part of 'verify_phone_response_dto.dart';

extension VerifyPhoneResponseDtoMock on VerifyPhoneResponseDto {
  /// 성공 응답
  static VerifyPhoneResponseDto success() {
    return VerifyPhoneResponseDto(
      status: true,
      message: '',
    );
  }

  /// 실패 응답
  static VerifyPhoneResponseDto failure() {
    return VerifyPhoneResponseDto(
      status: false,
      message: '중복된 번호입니다.',
    );
  }
}
