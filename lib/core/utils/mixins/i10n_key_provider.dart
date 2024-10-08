import 'package:easy_localization/easy_localization.dart' as easy;

// Enum 타입들에 Localization 제고
mixin I10nKeyProvider {

  /// Localization Key
  String get i10nKey;
}

extension I10nKeyProviderExt on I10nKeyProvider {
  String get tr => easy.tr(i10nKey);
}
