import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/feature/account/account.dart';

part 'auth_code_verification_entity.freezed.dart';

part 'auth_code_verification_entity.parser.dart';

@freezed
class AuthCodeVerificationEntity with _$AuthCodeVerificationEntity {
  factory AuthCodeVerificationEntity({
    required String phone,
    required String authCode,
  }) = _AuthCodeVerificationEntity;
}
