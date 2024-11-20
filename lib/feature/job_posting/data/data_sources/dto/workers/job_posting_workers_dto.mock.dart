part of 'job_posting_workers_dto.dart';

extension JobPostingWorkersDtoExt on JobPostingWorkersDto {
  static JobPostingWorkersDto mock({
    required int page,
  }) {
    const int totalElements = 27;
    final List<JobPostingWorkerDto> workers = List.generate(
      (10 * page) > totalElements ? (10 * page) - totalElements : 10,
          (int index) => JobPostingWorkerDtoExt.mock(
        id: '${(page * 10) + index}',
      ),
    );

    return JobPostingWorkersDto(
      title: '공고제목!',
      participants: 49,
      workStartDate: DateTime.now(),
      workEndDate: DateTime.now().add(const Duration(days: 4)),
      content: workers,
      totalPages: 3,
      totalElements: totalElements,
      size: 10,
      number: page,
    );
  }
}
