// 공고 상태 타입
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';

@JsonEnum(valueField: 'serverKey')
enum JobPostingStatusType with L10nKeyProvider {
  none(l10nKey: '', serverKey: ''),

  /// 임시저장
  temporary(l10nKey: 'temporarySave', serverKey: 'TEMPORARY'),

  /// 진행
  inProgress(l10nKey: 'inProgress', serverKey: 'IN_PROGRESS'),

  /// 마감
  closed(l10nKey: 'closed', serverKey: 'CLOSED');

  @override
  final String l10nKey;

  final String serverKey;

  const JobPostingStatusType({
    required this.l10nKey,
    required this.serverKey,
  });
}
