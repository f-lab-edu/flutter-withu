part of 'phone_verification_bloc.dart';

sealed class PhoneVerificationEvent extends BaseBlocEvent {}

/// 휴대폰 번호 입력 이벤트.
class PhoneVerificationPhoneInputted extends PhoneVerificationEvent {
  final String value;

  PhoneVerificationPhoneInputted({required this.value});

  Phone get phone => Phone(value);
}

/// 인증 번호 요청 이벤트.
class PhoneVerificationCodeRequested extends PhoneVerificationEvent {}

/// 인증번호 입력 이벤트.
class PhoneVerificationCodeInputted extends PhoneVerificationEvent {
  final String value;

  PhoneVerificationCodeInputted({required this.value});

  VerificationCode get code => VerificationCode(value);
}
