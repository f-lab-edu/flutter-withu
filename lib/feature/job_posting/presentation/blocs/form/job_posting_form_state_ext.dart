part of 'job_posting_form_bloc.dart';

extension JobPostingFormStateExt on JobPostingFormState {
  /// 등록/수정 여부
  bool get isRegistration => jobPostingId == null;

  /// 시작 날짜 문자열
  String get contractStartDateStr =>
      contractStartDate.format('yyyy-MM-dd') ?? '';

  /// 종료 날짜 문자열
  String get contractEndDateStr => contractEndDate.format('yyyy-MM-dd') ?? '';

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
      payAmount: int.tryParse(pay) ?? 0,
      workAddress: address,
      participants: int.tryParse(participants) ?? 0,
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

  /// Entity -> State
  JobPostingFormState copyWithEntity({
    required JobPostingFormStatus status,
    required JobPostingDetailEntity entity,
  }) {
    return copyWith(
      status: status,
      title: entity.title,
      content: entity.content,
      isTBC: entity.isTBC,
      participants: entity.participants,
      pay: entity.payAmount,
      address: entity.workAddress,
      preferredQualifications: entity.preferredQualifications,
      hasTravelTime: entity.hasTravelTime,
      hasBreakTime: entity.hasBreakTime,
      isMealProvided: entity.isMealProvided,
      category: entity.categoryType,
      contractType: entity.contractType,
      contractStartDate: entity.contractStartDate,
      contractEndDate: entity.contractEndDate,
      workStartTime: entity.workStartTime,
      workEndTime: entity.workEndTime,
      payType: entity.payType,
      isTravelTimePaid: entity.isTravelTimePaid,
      isBreakTimePaid: entity.isBreakTimePaid,
      message: '',
    );
  }
}
