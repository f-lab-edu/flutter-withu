import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';

part 'login_request_dto.freezed.dart';

part 'login_request_dto.g.dart';

@freezed
class LoginRequestDto with _$LoginRequestDto {
  factory LoginRequestDto({
    required LoginType loginType,
    required String loginId,
    required String password
  }) = _LoginRequestDto;

  factory LoginRequestDto.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestDtoFromJson(json);
}
