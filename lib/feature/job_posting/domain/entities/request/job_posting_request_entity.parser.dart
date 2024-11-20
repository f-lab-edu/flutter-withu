part of 'job_posting_request_entity.dart';

extension JobPostingRequestEntityExt on JobPostingRequestEntity {
  /// DTO로 변경
  JobPostingRequestDto toDto() {
    return JobPostingRequestDto(
      companyId: '1',
      title: title,
      content: content,
      specialtyField: categoryType.serverKey,
      contractType: contractType.serverKey,
      contractStartDate: contractStartDate,
      contractEndDate: contractEndDate,
      isTimeUndecided: isTBC,
      payType: payType.serverKey,
      payAmount: payAmount,
      workAddress: workAddress,
      participants: participants,
      hasTravelTime: hasTravelTime,
      isTravelTimePaid: isTravelTimePaid,
      hasBreakTime: hasBreakTime,
      isBreakTimePaid: isBreakTimePaid,
      isMealProvided: isMealProvided,
      preferredQualifications: preferredQualifications,
      workStartTime: workStartTime,
      workEndTime: workEndTime,
      isUrgent: false,
    );
  }
}
