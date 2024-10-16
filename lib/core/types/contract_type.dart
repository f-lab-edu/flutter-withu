import 'package:withu_app/core/core.dart';

/// 계약 타입
enum ContractType with L10nKeyProvider {
  /// 단기
  short(l10nKey: 'shortTerm', serverKey: 'SHORT_TERM'),

  /// 장기
  long(l10nKey: 'longTerm', serverKey: 'LONG_TERM');

  @override
  final String l10nKey;

  final String serverKey;

  const ContractType({
    required this.l10nKey,
    required this.serverKey,
  });

  /// 단기 여부
  bool get isShort => this == ContractType.short;

  /// 장기 여부
  bool get isLong => this == ContractType.long;
}
