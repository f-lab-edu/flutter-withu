import 'package:withu_app/core/core.dart';

/// 근로 기간 타입
enum PeriodType with L10nKeyProvider {
  /// 단기
  short(l10nKey: 'shortTerm'),

  /// 장기
  long(l10nKey: 'longTerm');

  @override
  final String l10nKey;

  /// 단기 여부
  bool get isShort => this == PeriodType.short;

  /// 장기 여부
  bool get isLong => this == PeriodType.long;

  const PeriodType({required this.l10nKey});
}
