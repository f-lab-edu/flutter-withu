import 'package:equatable/equatable.dart';

/// 인증번호 Value Object
class AuthCode extends Equatable {
  final String value;

  const AuthCode(this.value);

  static const empty = AuthCode('');

  @override
  List<Object?> get props => [value];

  bool get isValid => value.length == 6;
}
