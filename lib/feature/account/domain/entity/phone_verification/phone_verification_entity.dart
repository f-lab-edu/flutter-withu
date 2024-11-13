import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'phone_verification_entity.freezed.dart';

part 'phone_verification_entity.parser.dart';

part 'phone_verification_entity.mock.dart';

@freezed
class PhoneVerificationEntity with _$PhoneVerificationEntity {
  factory PhoneVerificationEntity({
    required bool status,
    @Default('') String message,
  }) = _PhoneVerificationEntity;
}
