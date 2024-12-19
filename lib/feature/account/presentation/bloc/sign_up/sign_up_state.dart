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
  /// 메시지가 있는지 여부
  bool get hasMessage => message.isNotEmpty;

  /// Password Error 메시지 노출 여부
  VisibleType getPasswordErrorVisible() {
    return VisibleTypeExt.fromBool(!_checkPasswordValid());
  }

  bool _checkPasswordValid() {
    return password.isValid && password.isEqual(passwordVerify);
  }

  /// Submit 버튼 Enabled 여부
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
