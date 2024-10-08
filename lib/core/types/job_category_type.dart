import 'package:withu_app/core/core.dart';

/// 직업 종류
enum JobCategoryType with I10nKeyProvider {
  /// 촬영
  photography(i10nKey: 'photography'),

  /// 케이터링
  catering(i10nKey: 'catering'),

  /// 푸드스타일링
  foodStyling(i10nKey: 'foodStyling'),

  /// 플라워리스트
  florist(i10nKey: 'florist');

  @override
  final String i10nKey;

  const JobCategoryType({required this.i10nKey});
}
