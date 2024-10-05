part of 'job_posting_bloc.dart';

enum JobPostingStatus { initial, loading, success, failure }

class JobPostingState extends Equatable {
  /// 상태값
  final JobPostingStatus status;

  /// 공고 목록
  final List<JobPostingEntity> list;

  /// 마지막 페이지 여부
  final bool isLast;

  const JobPostingState({
    this.status = JobPostingStatus.initial,
    this.list = const [],
    this.isLast = true,
  });

  JobPostingState copyWith({
    JobPostingStatus? status,
    List<JobPostingEntity>? list,
    bool? isLast,
  }) {
    return JobPostingState(
      status: status ?? this.status,
      list: list ?? this.list,
      isLast: isLast ?? this.isLast,
    );
  }

  @override
  List<Object?> get props => [status, list, isLast];
}
