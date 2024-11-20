import 'package:withu_app/core/core.dart';

/// 공고 관리 유효성 검사 메시지
enum JobPostingValidationMessage with Translatable {
  title,
  content,
  category,
  contractType,
  contractStartDate,
  contractEndDate,
  workStartTime,
  workEndTime,
  participants,
  payType,
  payAmount,
  address,
  preferredQualification,
  travelTimePaid,
  breakTimePaid;

  @override
  String get path => 'validationMessage.jobPosting.';
}
