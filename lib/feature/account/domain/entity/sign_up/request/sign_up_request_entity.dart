import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'sign_up_request_entity.freezed.dart';

part 'sign_up_request_entity.parser.dart';

part 'sign_up_request_entity.mock.dart';

@freezed
class SignUpRequestEntity with _$SignUpRequestEntity {
  factory SignUpRequestEntity({
    @Default(Name.empty) Name name,
    @Default(BirthDate.empty) BirthDate birthDate,
    @Default(GenderType.none) GenderType gender,
    @Default(Phone.empty) Phone phone,
    @Default(Email.empty) LoginId loginId,
    @Default(Password.empty) Password password,
    @Default(LoginType.email) LoginType loginType,
  }) = _SignUpRequestEntity;
}
