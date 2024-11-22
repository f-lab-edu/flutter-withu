import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/utils/resource/string_res.dart';
import 'package:withu_app/feature/account/account.dart';

part 'sign_up_result_entity.freezed.dart';

part 'sign_up_result_entity.parser.dart';

part 'sign_up_result_entity.mock.dart';

@freezed
class SignUpResultEntity with _$SignUpResultEntity {
  factory SignUpResultEntity({
    required bool status,
    @Default('') String message,
  }) = _SignUpResultEntity;
}
