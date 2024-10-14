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
  enterTitle,
  workDetail,
  enterDescriptionOfJobPosting,
  selectCategory,
  periodFormat,
  shortTerm,
  longTerm,
  workContractPeriod,
  time,
  tbd,
  numberOfPeopleRecruited,
  payMethod,
  hourlyWage,
  dailyWage,
  address,
  enterDetailedAddress,
  preferences,
  enterMemo,
  commuteTime,
  wage,
  nonWage,
  breakTime,
  mealAllowance,
}

extension StringResEx on StringRes {
  /// localization
  String get tr => easy.tr(name);
}
