// 공고 상태 타입
import 'package:withu_app/core/core.dart';

enum JobPostingStatusType with L10nKeyProvider {
  /// 임시저장
  temporary(l10nKey: 'temporarySave'),

  /// 진행
  inProgress(l10nKey: 'inProgress'),

  /// 마감
  closed(l10nKey: 'closed');

  @override
  final String l10nKey;

  const JobPostingStatusType({required this.l10nKey});
}
