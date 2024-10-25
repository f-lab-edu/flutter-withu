part of 'job_postings_dto.dart';

extension JobPostingsDtoMock on JobPostingsDto {
  static JobPostingsDto mock({
    int page = 0,
  }) {
    const int totalElements = 27;
    const int size = 10;
    final length = min(size, totalElements - (size * page));
    final List<JobPostingsItemDto> list = List.generate(
      length,
      (int index) => JobPostingsItemDtoMock.mock(
        id: '${(page * size) + index}',
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
