part of 'job_posting_worker_dto.dart';

extension JobPostingWorkerDtoExt on JobPostingWorkerDto {
  static JobPostingWorkerDto mock({
    required String id,
  }) {
    return JobPostingWorkerDto(
      id: '',
      workStatus: false,
      userInfo: SimpleUserDtoExt.mock(id: id),
      workStartTime: DateTime.now(),
      workEndTime: DateTime.now().add(
        const Duration(hours: 8),
      ),
    );
  }
}
