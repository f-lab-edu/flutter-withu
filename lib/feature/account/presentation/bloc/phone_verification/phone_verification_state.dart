part of 'phone_verification_bloc.dart';

@freezed
class PhoneVerificationState extends BaseBlocState with _$PhoneVerificationState {
  factory PhoneVerificationState({
    required BaseBlocStatus status,

    /// 휴대폰
    @Default(Phone.empty) Phone phone,

    /// 인증번호
    @Default(VerificationCode.empty) VerificationCode code,
  }) = _PhoneVerificationState;
}

extension PhoneVerificationStateExt on PhoneVerificationState {
  /// 인증 요청 가능 여부
  bool get canRequestVerification => phone.isValid;
}
