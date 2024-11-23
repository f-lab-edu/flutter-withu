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
    @Default(false) bool isAuthPhone,
    @Default(Email.empty) LoginId loginId,
    @Default(false) bool isUniqueId,
    @Default(Password.empty) Password password,
    @Default(Password.empty) Password passwordVerify,
    @Default(true) bool isPasswordObscure,
    @Default(VisibleType.none) VisibleType isPasswordErrorVisible,
  }) = _SignUpState;
}

extension SignUpStateExt on SignUpState {
  VisibleType getPasswordErrorVisible() {
    return VisibleTypeExt.fromBool(!_checkPasswordValid());
  }

  bool _checkPasswordValid() {
    return password.isValid && password.isEqual(passwordVerify);
  }

  bool get isEnabledSubmit => _checkSubmitEnabled();

  bool _checkSubmitEnabled() {
    return name.isValid &&
        birthDate.isValid &&
        !gender.isNone &&
        isAuthPhone &&
        isUniqueId &&
        _checkPasswordValid();
  }
}
