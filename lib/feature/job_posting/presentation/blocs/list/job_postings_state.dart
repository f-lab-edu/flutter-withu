part of 'job_postings_bloc.dart';


@freezed
class JobPostingState extends BaseBlocState with _$JobPostingState {
  factory JobPostingState({
    /// 상태.
    required BaseBlocStatus status,
    /// 공고 목록.
    @Default([]) List<JobPostingsItemEntity> jobPostingItems,
    /// 마지막 여부.
    @Default(false) bool isLast,
  }) = _JobPostingState;
}
