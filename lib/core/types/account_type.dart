import 'package:freezed_annotation/freezed_annotation.dart';

/// 계정 타입
@JsonEnum(valueField: 'serverKey')
enum AccountType {
  none(serverKey: ''),

  /// 고용주
  company(serverKey: 'COMPANY'),

  /// 직원
  user(serverKey: 'USER');

  final String serverKey;

  const AccountType({required this.serverKey});
}
