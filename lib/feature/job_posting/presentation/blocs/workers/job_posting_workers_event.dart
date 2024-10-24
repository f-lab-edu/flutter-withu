part of 'job_posting_workers_bloc.dart';

sealed class JobPostingWorkersEvent {}

/// 공고 Id 저장
class JobPostingWorkersIdStored extends JobPostingWorkersEvent {
  /// 공고 Id
  final String id;

  JobPostingWorkersIdStored({required this.id});
}

/// 화면 초기화
class JobPostingWorkersInitialized extends JobPostingWorkersEvent {}

/// 메시지 초기화
class JobPostingWorkersMessageCleared extends JobPostingWorkersEvent {}
