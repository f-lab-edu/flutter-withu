part of 'phone_auth_bloc.dart';

@freezed
class PhoneAuthState extends BaseBlocState
    with _$PhoneAuthState {
  factory PhoneAuthState({
    required BaseBlocStatus status,

    /// 휴대폰
    @Default(Phone.empty) Phone phone,

    /// 인증번호
    @Default(AuthCode.empty) AuthCode authCode,

    /// 인증번호 에러 문구 노출 여부
    @Default(VisibleType.none) VisibleType authCodeErrorVisible,
  }) = _PhoneAuthState;
}

extension PhoneAuthStateExt on PhoneAuthState {
  /// 인증번호 검증 요청 가능 여부
  bool get canAuthCodeVerification => phone.isValid && authCode.isValid;

  /// 인증 요청 가능 여부
  bool get canRequestVerification => phone.isValid;

  /// 에러 문구 노출 여부
  bool get isVisibleAuthCodeError => authCodeErrorVisible.isVisible;
}
