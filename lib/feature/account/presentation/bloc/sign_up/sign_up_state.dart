part of 'sign_up_bloc.dart';

@freezed
class SignUpState extends BaseBlocState with _$SignUpState {
  factory SignUpState({
    required BaseBlocStatus status,
    @Default('') String message,
    @Default(Name.empty) Name name,
    @Default(BirthDate.empty) BirthDate birthDate,
    @Default(GenderType.none) GenderType gender,
    @Default(Phone.empty) Phone phone,
    @Default(Email.empty) LoginId loginId,
    @Default(Password.empty) Password password,
    @Default(Password.empty) Password passwordVerify,
  }) = _SignUpState;
}