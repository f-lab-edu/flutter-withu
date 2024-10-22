import 'package:withu_app/core/core.dart';

/// 공고 상세 화면 바텀 시트 타입
enum DetailBottomSheetType with L10nKeyProvider {
  update(l10nKey: 'update'),
  delete(l10nKey: 'delete'),
  close(l10nKey: 'close');

  @override
  final String l10nKey;

  const DetailBottomSheetType({required this.l10nKey});
}
