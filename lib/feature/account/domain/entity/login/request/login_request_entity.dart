import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/data/data_sources/dto/login/request/login_request_dto.dart';

part 'login_request_entity.freezed.dart';

part 'login_request_entity.mock.dart';

part 'login_request_entity.converter.dart';

@freezed
class LoginRequestEntity with _$LoginRequestEntity {
  factory LoginRequestEntity({
    required AccountType accountType,
    required LoginType loginType,
    required String loginId,
    required String password,
  }) = _LoginRequestEntity;
}
