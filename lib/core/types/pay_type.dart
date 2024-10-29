import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';

/// 급여 타입
@JsonEnum(valueField: 'serverKey')
enum PayType with L10nKeyProvider {
  none(l10nKey: '', serverKey: ''),

  /// 시급
  hour(l10nKey: 'hourlyWage', serverKey: 'HOURLY'),

  /// 일급
  day(l10nKey: 'dailyWage', serverKey: 'DAILY');

  @override
  final String l10nKey;

  final String serverKey;

  const PayType({
    required this.l10nKey,
    required this.serverKey,
  });

  /// None 여부
  bool get isNone => this == PayType.none;
}
