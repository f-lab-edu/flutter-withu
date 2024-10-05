import 'package:easy_localization/easy_localization.dart' as easy;

enum StringRes {
  appName,
  temporarySave,
  inProgress,
  closed,
  photography,
  catering,
  foodStyling,
  florist,
  numberOfRecruits,
}

extension StringResEx on StringRes {
  /// localization
  String get tr => easy.tr(name);
}
