part of 'job_postings_item_dto.dart';

extension JobPostingsItemDtoMock on JobPostingsItemDto {
  static JobPostingsItemDto mock({
    String id = '1',
  }) {
    return JobPostingsItemDto(
      id: id,
      title: '공고제목:)',
      category: JobCategoryType.catering,
      status: JobPostingStatusType.closed,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      currentMemberCount: 1,
      maxMemberCount: 3,
    );
  }
}
