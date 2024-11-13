import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_phone_response_dto.freezed.dart';

part 'verify_phone_response_dto.g.dart';

part 'verify_phone_response_dto.mock.dart';

/// 휴대폰 인증 요청 응답 모델
@freezed
class VerifyPhoneResponseDto with _$VerifyPhoneResponseDto {
  factory VerifyPhoneResponseDto({
    required bool status,
    required String message,
  }) = _VerifyPhoneResponseDto;

  factory VerifyPhoneResponseDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyPhoneResponseDtoFromJson(json);
}
