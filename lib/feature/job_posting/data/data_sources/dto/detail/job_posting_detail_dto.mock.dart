part of 'job_posting_detail_dto.dart';

extension JobPostingDetailDtoMock on JobPostingDetailDto {
  /// Mock 데이터 생성.
  static JobPostingDetailDto mock({
    required String id,
  }) {
    return JobPostingDetailDto(
      id: id,
      company: CompanyDto.mock(),
      views: 1000,
      title: '공고제목입니다:)',
      content: '열심히 일하시면 됩니다.',
      specialtyField: JobCategoryType.catering,
      contractType: ContractType.short,
      contractStartDate: DateTime.now(),
      contractEndDate: DateTime.now(),
      isTimeUndecided: true,
      payType: PayType.hour,
      payAmount: 12000,
      workAddress: '서울 동작구 여의대방로22바길 2 2층',
      latitude: 37.5664056,
      longitude: 126.9778222,
      participants: 3,
      hasTravelTime: true,
      isTravelTimePaid: false,
      hasBreakTime: false,
      isBreakTimePaid: false,
      isMealProvided: true,
      isUrgent: false,
      preferredQualifications: '채우기 부르며, 용어로도 보여줄 사용하는 분야에서 같은,',
    );
  }
}
