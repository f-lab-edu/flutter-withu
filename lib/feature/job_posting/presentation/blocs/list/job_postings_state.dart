part of 'job_postings_bloc.dart';


@freezed
class JobPostingState extends BaseBlocState with _$JobPostingState {
  factory JobPostingState({
    /// 상태.
    required BaseBlocStatus status,
    /// 공고 목록.
    @Default([]) List<JobPostingsItemEntity> list,
    /// 마지막 여부.
    @Default(true) bool isLast,
  }) = _JobPostingState;
}
