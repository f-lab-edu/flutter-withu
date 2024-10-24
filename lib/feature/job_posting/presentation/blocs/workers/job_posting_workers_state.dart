part of 'job_posting_workers_bloc.dart';

enum JobPostingWorkersStatus { initial, loading, loaded, failure }

extension JobPostingWorkersStatusExt on JobPostingWorkersStatus {
  bool get isLoading => this == JobPostingWorkersStatus.loading;
}

@freezed
class JobPostingWorkersState with _$JobPostingWorkersState {
  factory JobPostingWorkersState({
    required JobPostingWorkersStatus status,
    required String message,
    required String title,
    required int applicants,
    required int participants,
    required String workStartDate,
    required String workEndDate,
    required List<JobPostingWorkerEntity> list,
    required bool isLast,
    String? jobPostingId,
  }) = _JobPostingWorkersState;
}

extension JobPostingWorkersStateExt on JobPostingWorkersState {
  /// 출근현황
  String get workStatus => '$applicants/$participants';

  /// 근무 기간
  String get workPeriod => _getWorkPeriod();

  String _getWorkPeriod() {
    final isShort = workStartDate == workEndDate;
    return isShort ? workStartDate : '$workStartDate - $workEndDate';
  }
}
