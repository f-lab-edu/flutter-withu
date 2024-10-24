import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_user_dto.freezed.dart';

part 'simple_user_dto.g.dart';

@freezed
class SimpleUserDto with _$SimpleUserDto {
  factory SimpleUserDto({
    required String id, // id
    required String name, // 이름
    required int age, // 나이
    required String profile, // 프로필 이미지
  }) = _SimpleUserDto;

  factory SimpleUserDto.fromJson(Map<String, dynamic> json) =>
      _$SimpleUserDtoFromJson(json);
}
