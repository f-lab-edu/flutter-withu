import 'package:withu_app/core/core.dart';

/// 급여 타입
enum PayType with L10nKeyProvider {
  /// 시급
  hour(l10nKey: 'hourlyWage'),

  /// 일급
  day(l10nKey: 'dailyWage');

  @override
  final String l10nKey;

  const PayType({required this.l10nKey});
}
