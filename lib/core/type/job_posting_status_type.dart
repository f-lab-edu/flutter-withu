// 공고 상태 타입
enum JobPostingStatusType {
  /// 임시저장
  temporary,

  /// 진행
  inProgress,

  /// 마감
  closed;
}

extension JobPostingStatusTypeEx on JobPostingStatusType {
  String get displayName {
    switch (this) {
      case JobPostingStatusType.temporary:
        return '임시저장';
      case JobPostingStatusType.inProgress:
        return '진행';
      case JobPostingStatusType.closed:
        return '마감';
    }
  }
}
