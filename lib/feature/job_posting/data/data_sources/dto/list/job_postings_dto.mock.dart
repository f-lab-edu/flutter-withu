part of 'job_postings_dto.dart';

extension JobPostingsDtoMock on JobPostingsDto {
  static JobPostingsDto mock({
    required int page,
    required JobPostingStatusType status,
  }) {
    const int totalElements = 27;
    const int size = 10;
    final length = min(size, totalElements - (size * page));
    final List<JobPostingsItemDto> list = List.generate(
      length,
      (int index) => JobPostingsItemDtoMock.mock(
        id: '${(page * size) + index}',
        status: status,
      ),
    );

    return JobPostingsDto(
      content: list,
      totalPages: 3,
      totalElements: totalElements,
      size: size,
      number: page,
    );
  }
}
