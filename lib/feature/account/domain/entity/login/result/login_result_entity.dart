import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/data/data_sources/dto/login/response/login_response_dto.dart';

part 'login_result_entity.freezed.dart';

part 'login_result_entity.converter.dart';

@freezed
class LoginResultEntity with _$LoginResultEntity {
  factory LoginResultEntity({
    required bool isLoggedIn, // 로그인 성공 엽
    @Default('') String message, // 실패시 메시지
  }) = _LoginResultEntity;
}
