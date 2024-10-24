part of 'job_posting_workers_bloc.dart';

enum JobPostingWorkersStatus { initial, loading, loaded, failure }

@freezed
class JobPostingWorkersState with _$JobPostingWorkersState {
  factory JobPostingWorkersState({
    required JobPostingWorkersStatus status,
    required String message,
    required String title,
    required int participants,
    required String workStartDate,
    required String workEndDate,
    required List<JobPostingWorkerEntity> list,
    required bool isLast,
    String? jobPostingId,
  }) = _JobPostingWorkersState;
}
