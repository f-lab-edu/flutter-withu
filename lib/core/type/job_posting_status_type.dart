// 공고 상태 타입
import 'package:withu_app/core/core.dart';

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
        return StringRes.temporarySave.tr;
      case JobPostingStatusType.inProgress:
        return StringRes.inProgress.tr;
      case JobPostingStatusType.closed:
        return StringRes.closed.tr;
    }
  }
}
