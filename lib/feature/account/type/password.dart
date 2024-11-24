import 'package:equatable/equatable.dart';
import 'package:withu_app/core/utils/regex/regex.dart';

/// 비밀번호 Value Object
class Password extends Equatable {
  final String value;

  const Password(this.value);

  static const empty = Password('');

  @override
  List<Object?> get props => [value];

  bool get isValid => RegExUtil.passwordPattern.hasMatch(value);

  bool isEqual(Password password) {
    return value == password.value;
  }
}
