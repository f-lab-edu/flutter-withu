import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_auth_code_response_dto.freezed.dart';

part 'send_auth_code_response_dto.g.dart';

part 'send_auth_code_response_dto.mock.dart';

/// 휴대폰 인증번호 전송 응답 모델
@freezed
class SendAuthCodeResponseDto with _$SendAuthCodeResponseDto {
  factory SendAuthCodeResponseDto({
    required bool status,
    required String message,
  }) = _SendAuthCodeResponseDto;

  factory SendAuthCodeResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SendAuthCodeResponseDtoFromJson(json);
}
