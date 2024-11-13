import 'package:equatable/equatable.dart';

/// 인증번호 Value Object
class VerificationCode extends Equatable {
  final String value;

  const VerificationCode(this.value);

  static const empty = VerificationCode('');

  @override
  List<Object?> get props => [value];

  bool get isValid => value.length == 6;
}
