import 'package:easy_localization/easy_localization.dart' as easy;

// Enum 타입들에 Localization 제고
mixin L10nKeyProvider {

  /// Localization Key
  String get l10nKey;
}

extension L10nKeyProviderExt on L10nKeyProvider {
  String get tr => easy.tr(l10nKey);
}
