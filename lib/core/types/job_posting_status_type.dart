// 공고 상태 타입
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';

@JsonEnum(valueField: 'serverKey')
enum JobPostingStatusType with L10nKeyProvider {
  /// 진행
  inProgress(
    l10nKey: 'inProgress',
    serverKey: 'IN_PROGRESS',
  ),

  /// 마감
  close(
    l10nKey: 'closed',
    serverKey: 'CLOSE',
  ),

  /// 삭제
  delete(
    l10nKey: 'delete',
    serverKey: 'DELETE',
  );

  @override
  final String l10nKey;

  final String serverKey;

  const JobPostingStatusType({
    required this.l10nKey,
    required this.serverKey,
  });

  /// 진행 타입 여부
  bool get isInProgress => this == JobPostingStatusType.inProgress;
}
