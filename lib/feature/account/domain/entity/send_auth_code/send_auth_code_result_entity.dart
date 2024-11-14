import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'send_auth_code_result_entity.freezed.dart';

part 'send_auth_code_result_entity.parser.dart';

part 'send_auth_code_result_entity.mock.dart';

@freezed
class SendAuthCodeResultEntity with _$SendAuthCodeResultEntity {
  factory SendAuthCodeResultEntity({
    required bool status,
    @Default('') String message,
  }) = _SendAuthCodeResultEntity;
}
