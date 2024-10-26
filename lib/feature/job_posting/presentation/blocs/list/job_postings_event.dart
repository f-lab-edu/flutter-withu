part of 'job_postings_bloc.dart';

sealed class JobPostingsEvent extends BaseBlocEvent {}

/// 화면 초기화 이벤트
class JobPostingsInitialized extends JobPostingsEvent {}

/// 다음 페이지 조회 이벤트
class JobPostingsNextPaginated extends JobPostingsEvent {
  final int page;

  JobPostingsNextPaginated({
    required this.page,
  });
}

/// 리프레시
class JobPostingsRefreshed extends JobPostingsEvent {}
