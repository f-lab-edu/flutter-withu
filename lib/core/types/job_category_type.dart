import 'package:withu_app/core/core.dart';

/// 직업 종류
enum JobCategoryType with L10nKeyProvider {
  /// 촬영
  photography(l10nKey: 'photography'),

  /// 케이터링
  catering(l10nKey: 'catering'),

  /// 푸드스타일링
  foodStyling(l10nKey: 'foodStyling'),

  /// 플라워리스트
  florist(l10nKey: 'florist');

  @override
  final String l10nKey;

  const JobCategoryType({required this.l10nKey});
}
