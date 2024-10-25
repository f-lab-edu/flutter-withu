part of 'job_postings_bloc.dart';

sealed class JobPostingsEvent extends BaseBlocEvent {}

/// 화면 초기화 이벤트
class JobPostingsInitialized extends JobPostingsEvent {
  final JobPostingStatusType type;

  JobPostingsInitialized({
    required this.type,
  });
}

/// 리스트 조회 이벤트
class OnGettingListEvent extends JobPostingsEvent {
  final JobPostingStatusType type;

  final int page;

  OnGettingListEvent({
    required this.type,
    required this.page,
  });
}
