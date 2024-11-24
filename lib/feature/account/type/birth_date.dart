import 'package:equatable/equatable.dart';
import 'package:withu_app/core/core.dart';

/// 생년월일 Value Object
class BirthDate extends Equatable {
  final String value;

  const BirthDate(this.value);

  static const empty = BirthDate('');

  @override
  List<Object?> get props => [value];

  bool get isValid => RegExUtil.birthDatePattern.hasMatch(value);

  DateTime get date => value.toDate();
}
