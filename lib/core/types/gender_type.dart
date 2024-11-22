import 'package:freezed_annotation/freezed_annotation.dart';

/// 계정 타입
@JsonEnum(valueField: 'serverKey')
enum GenderType {
  none(serverKey: ''),

  man(serverKey: 'MAN'),

  woman(serverKey: 'WOMAN');

  final String serverKey;

  const GenderType({required this.serverKey});
}
