part of 'job_posting_detail_bloc.dart';

/// initial: 화면 초기 상태
/// loading: Api 통신 중
/// success: API 통신 성공
/// fail: API 통신 실패
enum JobPostingDetailStatus { initial, loading, success, fail }

extension JobPostingDetailStatusExt on JobPostingDetailStatus {
  bool get isInitial => this == JobPostingDetailStatus.initial;

  bool get isLoading => this == JobPostingDetailStatus.loading;

  bool get isSuccess => this == JobPostingDetailStatus.success;

  bool get isFail => this == JobPostingDetailStatus.fail;
}

@freezed
class JobPostingDetailState with _$JobPostingDetailState {
  factory JobPostingDetailState({
    required JobPostingDetailStatus status,
    JobPostingDetailEntity? entity,
  }) = _JobPostingDetailState;
}
