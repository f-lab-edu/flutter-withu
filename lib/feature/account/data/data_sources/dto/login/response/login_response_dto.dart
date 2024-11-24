import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';

part 'login_response_dto.freezed.dart';

part 'login_response_dto.g.dart';

part 'login_response_dto.mock.dart';

@freezed
class LoginResponseDto with _$LoginResponseDto {
  factory LoginResponseDto({
    required bool status,
    required String message,
    String? userId, // id
    String? loginId, // email
    String? name,
    String? sessionId,
    int? accountId,
    AccountType? accountType,
  }) = _LoginResponseDto;

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDtoFromJson(json);
}
