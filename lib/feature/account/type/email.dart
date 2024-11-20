import 'package:withu_app/core/utils/regex/regex_util.dart';

import 'loginId.dart';

/// 이메일 Value Object
class Email extends LoginId {
  const Email({required super.value});

  static const empty = Email(value: '');

  @override
  bool get isValid => RegExUtil.emailPattern.hasMatch(value);

  @override
  List<Object?> get props => [value];
}
