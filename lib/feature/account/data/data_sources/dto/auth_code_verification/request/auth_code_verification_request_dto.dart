import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_code_verification_request_dto.freezed.dart';

part 'auth_code_verification_request_dto.g.dart';

@freezed
class AuthCodeVerificationRequestDto with _$AuthCodeVerificationRequestDto {
  factory AuthCodeVerificationRequestDto({
    required String phone,
    required String authCode,
  }) = _AuthCodeVerificationRequestDto;

  factory AuthCodeVerificationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AuthCodeVerificationRequestDtoFromJson(json);
}
