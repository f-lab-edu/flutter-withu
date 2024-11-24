import 'package:equatable/equatable.dart';
import 'package:withu_app/core/core.dart';

/// 이름 Value Object
class Name extends Equatable {
  final String value;

  const Name(this.value);

  static const empty = Name('');

  @override
  List<Object?> get props => [value];

  bool get isValid => RegExUtil.namePattern.hasMatch(value);
}
