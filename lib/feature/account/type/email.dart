import 'package:equatable/equatable.dart';
import 'package:withu_app/core/utils/regex/regex_util.dart';

/// 이메일 Value Object
class Email extends Equatable {
  final String value;

  const Email(this.value);

  static const empty = Email('');

  @override
  List<Object?> get props => [value];

  bool get isValid => RegExUtil.emailPattern.hasMatch(value);
}
