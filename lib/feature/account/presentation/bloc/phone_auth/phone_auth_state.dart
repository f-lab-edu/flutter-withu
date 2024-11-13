part of 'phone_auth_bloc.dart';

@freezed
class PhoneAuthState extends BaseBlocState with _$PhoneAuthState {
  factory PhoneAuthState({
    required BaseBlocStatus status,

    /// 휴대폰
    @Default(Phone.empty) Phone phone,

    /// 인증번호
    @Default(PhoneAuth.empty) PhoneAuth phoneAuth,
  }) = _PhoneAuthState;
}
