import 'package:easy_localization/easy_localization.dart' as easy;

/// Localization
mixin Translatable {
  String get path;

  String get tr => easy.tr('$path$this');
}
