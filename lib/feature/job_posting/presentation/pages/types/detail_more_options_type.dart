import 'package:withu_app/core/core.dart';

/// 공고 상세의 더보기 옵션 타입
enum DetailMoreOptionsType with L10nKeyProvider {
  update(l10nKey: 'update'),
  delete(l10nKey: 'delete'),
  close(l10nKey: 'close');

  @override
  final String l10nKey;

  const DetailMoreOptionsType({required this.l10nKey});
}
