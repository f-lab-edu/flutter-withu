part of 'job_posting_form_bloc.dart';

extension JobPostingFormStateExt on JobPostingFormState {
  String get contractStartDateStr =>
      contractStartDate?.format('yyyy-MM-dd') ?? '';

  String get contractEndDateStr => contractEndDate?.format('yyyy-MM-dd') ?? '';

  /// 등록/수정 요청 Entity로 변경
  JobPostingRequestEntity toEntity() {
    return JobPostingRequestEntity(
      companyId: '1',
      title: title,
      content: content,
      categoryType: category,
      contractType: contractType,
      contractStartDate: contractStartDate,
      contractEndDate: contractEndDate,
      isTBC: isTBC,
      payType: payType,
      payAmount: pay,
      workAddress: address,
      participants: participants,
      hasTravelTime: hasTravelTime,
      isTravelTimePaid: isTravelTimePaid,
      hasBreakTime: hasBreakTime,
      isBreakTimePaid: isBreakTimePaid,
      isMealProvided: isMealProvided,
      preferredQualifications: preferredQualifications,
      workStartTime: workStartTime,
      workEndTime: workEndTime,
    );
  }
}
