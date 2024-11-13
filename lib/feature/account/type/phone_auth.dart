import 'package:equatable/equatable.dart';

/// 휴대폰번호 Value Object
class PhoneAuth extends Equatable {
  final String value;

  const PhoneAuth(this.value);

  static const empty = PhoneAuth('');

  @override
  List<Object?> get props => [value];

  bool get isValid => value.length == 6;
}
