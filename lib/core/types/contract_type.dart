import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';

/// 계약 타입
@JsonEnum(valueField: 'serverKey')
enum ContractType with L10nKeyProvider {
  none(l10nKey: '', serverKey: ''),

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

  /// None 여부
  bool get isNone => this == ContractType.none;

  /// 단기 여부
  bool get isShort => this == ContractType.short;

  /// 장기 여부
  bool get isLong => this == ContractType.long;

  /// None을 제외한 값들
  static List<ContractType> get valuesWithoutNone =>
      values.where((type) => type != none).toList();
}
