part of 'phone_auth_bloc.dart';

sealed class PhoneAuthEvent extends BaseBlocEvent {}

/// 휴대폰 번호 입력 이벤트.
class PhoneAuthPhoneInputted extends PhoneAuthEvent {
  final String value;

  PhoneAuthPhoneInputted({required this.value});

  Phone get phone => Phone(value);
}

/// 인증 번호 요청 이벤트.
class PhoneAuthAuthCodeRequested extends PhoneAuthEvent {}

/// 인증번호 입력 이벤트.
class PhoneAuthAuthCodeInputted extends PhoneAuthEvent {
  final String value;

  PhoneAuthAuthCodeInputted({required this.value});

  AuthCode get code => AuthCode(value);
}
