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
  workContractStartPeriod,
  workContractEndPeriod,
  time,
  tbc,
  numberOfPeopleRecruited,
  payMethod,
  hourlyWage,
  dailyWage,
  address,
  findAddress,
  enterDetailedAddress,
  preferences,
  enterMemo,
  travelTime,
  travelTimeOrNot,
  wage,
  nonWage,
  breakTime,
  breakTimeOrNot,
  mealPaid,
  mealPaidOrNot,
  workHours,
  numberOfPeopleUnit,
  wonUnit,
  registration,
  serverError,
  travelTimeGuideDescription,
  breakTimeGuideDescription,
  mealGuideDescription,
  update,
  delete,
  close,
  cancel,
  isNotDeadlineYetConfirmClose,
  isUpdateContentCorrect,
  canRevertFromPostingManagement,
  yearsOld,
  showJobPosting,
  workStatus,
  attendance,
  leaveWork,
  attendanceScheduled,
  attendanceCompleted,
  noApplicants,
  closingRecruitment,
  noSavedJobPosting,
  findingGeekWorker,
  findingNewJob,
  pleaseEnterEmail,
  pleaseEnterPassword,
  login,
  findIdPw,
  signUp,
  pleaseEnterValidEmail,
  pleaseEnterValidPassword,
  enterOnlyNumber,
  enterVerificationCode,
  verification,
  invalidVerificationCode,
  emailDuplicateError,
  name,
  enterTwoOrMoreChars,
  birthDate,
  enterEightChars,
  gender,
  man,
  woman,
  phone,
  email,
  password,
  verifyPassword,
  findId,
  findPassword,
}

extension StringResEx on StringRes {
  /// localization
  String get tr => easy.tr(name);
}
