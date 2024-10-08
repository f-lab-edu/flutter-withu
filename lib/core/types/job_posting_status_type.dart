// 공고 상태 타입
import 'package:withu_app/core/core.dart';

enum JobPostingStatusType with I10nKeyProvider {
  /// 임시저장
  temporary(i10nKey: 'temporarySave'),

  /// 진행
  inProgress(i10nKey: 'inProgress'),

  /// 마감
  closed(i10nKey: 'closed');

  @override
  final String i10nKey;

  const JobPostingStatusType({required this.i10nKey});
}
