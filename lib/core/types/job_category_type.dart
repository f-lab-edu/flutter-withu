import 'package:withu_app/core/core.dart';

/// 직업 종류
enum JobCategoryType with L10nKeyProvider {
  /// 촬영
  photography(l10nKey: 'photography', serverKey: 'PHOTOGRAPHY'),

  /// 케이터링
  catering(l10nKey: 'catering', serverKey: 'CATERING'),

  /// 푸드스타일링
  foodStyling(l10nKey: 'foodStyling', serverKey: 'FOOD_STYLING'),

  /// 플라워리스트
  florist(l10nKey: 'flower', serverKey: 'FLORIST');

  @override
  final String l10nKey;

  final String serverKey;

  const JobCategoryType({
    required this.l10nKey,
    required this.serverKey,
  });
}
