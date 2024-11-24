part of 'phone_auth_bloc.dart';

abstract class PhoneAuthEvent extends Equatable {}

/// 휴대폰 번호 입력 이벤트.
class PhoneAuthPhoneInputted extends PhoneAuthEvent {
  final String value;

  PhoneAuthPhoneInputted({required this.value});

  Phone get phone => Phone(value);

  @override
  List<Object?> get props => [value];
}

/// 인증 번호 요청 이벤트.
class PhoneAuthAuthCodeSent extends PhoneAuthEvent {
  @override
  List<Object?> get props => ['auth_code_sent'];
}

/// 인증번호 입력 이벤트.
class PhoneAuthAuthCodeInputted extends PhoneAuthEvent {
  final String value;

  PhoneAuthAuthCodeInputted({required this.value});

  AuthCode get code => AuthCode(value);

  @override
  List<Object?> get props => [];
}
