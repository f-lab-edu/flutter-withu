part of 'job_posting_detail_bloc.dart';

/// initial: 화면 초기 상태
/// loading: Api 통신 중
/// success: API 통신 성공
/// fail: API 통신 실패
/// closed: 마감 상태
/// deleted: 삭제 상태
enum JobPostingDetailStatus { initial, loading, success, fail, closed, deleted }

extension JobPostingDetailStatusExt on JobPostingDetailStatus {
  bool get isInitial => this == JobPostingDetailStatus.initial;

  bool get isLoading => this == JobPostingDetailStatus.loading;

  bool get isSuccess => this == JobPostingDetailStatus.success;

  bool get isClosed => this == JobPostingDetailStatus.closed;

  bool get isDeleted => this == JobPostingDetailStatus.deleted;
}

@freezed
class JobPostingDetailState with _$JobPostingDetailState {
  factory JobPostingDetailState({
    required JobPostingDetailStatus status,
    required String message,
    JobPostingDetailEntity? entity,
  }) = _JobPostingDetailState;
}
