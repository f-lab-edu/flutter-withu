part of 'job_postings_bloc.dart';

enum JobPostingsStatus { initial, loading, success, failure }

class JobPostingState extends Equatable {
  /// 상태값
  final JobPostingsStatus status;

  /// 공고 목록
  final List<JobPostingEntity> list;

  /// 마지막 페이지 여부
  final bool isLast;

  const JobPostingState({
    this.status = JobPostingsStatus.initial,
    this.list = const [],
    this.isLast = true,
  });

  JobPostingState copyWith({
    JobPostingsStatus? status,
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
