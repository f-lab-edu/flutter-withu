import 'package:withu_app/core/core.dart';

/// 근로 기간 타입
enum ContractType with L10nKeyProvider {
  /// 단기
  short(l10nKey: 'shortTerm'),

  /// 장기
  long(l10nKey: 'longTerm');

  @override
  final String l10nKey;

  const ContractType({required this.l10nKey});
}
