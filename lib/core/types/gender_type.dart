import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/utils/mixins/l10n_key_provider.dart';

/// 계정 타입
@JsonEnum(valueField: 'serverKey')
enum GenderType with L10nKeyProvider {
  none(l10nKey: '', serverKey: ''),
  woman(l10nKey: 'woman', serverKey: 'WOMAN'),
  man(l10nKey: 'man', serverKey: 'MAN');

  final String serverKey;

  @override
  final String l10nKey;

  const GenderType({
    required this.l10nKey,
    required this.serverKey,
  });

  static List<GenderType> get valuesWithoutNone => values
      .where(
        (type) => type != none,
      )
      .toList();
}
