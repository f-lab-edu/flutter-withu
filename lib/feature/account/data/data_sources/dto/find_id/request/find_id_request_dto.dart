import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';

part 'find_id_request_dto.freezed.dart';

part 'find_id_request_dto.g.dart';

@freezed
class FindIdRequestDto with _$FindIdRequestDto {
  factory FindIdRequestDto({
    required String phoneNumber,
    required String authCode,
    required AccountType accountType,
  }) = _FindIdRequestDto;

  factory FindIdRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FindIdRequestDtoFromJson(json);
}
