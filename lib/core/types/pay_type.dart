import 'package:withu_app/core/core.dart';

/// 급여 타입
enum PayType with L10nKeyProvider {
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
}
