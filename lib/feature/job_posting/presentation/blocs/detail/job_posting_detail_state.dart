part of 'job_posting_detail_bloc.dart';

/// initial: 화면 초기 상태
/// loading: Api 통신 중
/// success: API 통신 성공
/// fail: API 통신 실패
/// closed: 마감 상태로 변경됨
enum JobPostingDetailStatus { initial, loading, success, fail, closed }

extension JobPostingDetailStatusExt on JobPostingDetailStatus {
  bool get isInitial => this == JobPostingDetailStatus.initial;

  bool get isLoading => this == JobPostingDetailStatus.loading;

  bool get isSuccess => this == JobPostingDetailStatus.success;

  bool get isClosed => this == JobPostingDetailStatus.closed;
}

@freezed
class JobPostingDetailState with _$JobPostingDetailState {
  factory JobPostingDetailState({
    required JobPostingDetailStatus status,
    required String message,
    JobPostingDetailEntity? entity,
  }) = _JobPostingDetailState;
}
