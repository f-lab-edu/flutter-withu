import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';

part 'sign_up_request_dto.freezed.dart';

part 'sign_up_request_dto.g.dart';

@freezed
class SignUpRequestDto with _$SignUpRequestDto {
  factory SignUpRequestDto({
    required String loginId,
    required String password,
    required LoginType type,
    required GenderType gender,
    required String name,
    required DateTime birthDate,
    required String cellPhoneNo,
  }) = _SignUpRequestDto;

  factory SignUpRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestDtoFromJson(json);
}
