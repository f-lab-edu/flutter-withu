import '../utils/utils.dart';

/// 직업 종류
enum JobCategory {
  /// 촬영
  photography,

  /// 케이터링
  catering,

  /// 푸드스타일링
  foodStyling,

  /// 플라워리스트
  florist;
}

extension JobCategoryEx on JobCategory {
  String get displayName {
    switch (this) {
      case JobCategory.photography:
        return StringRes.photography.tr;
      case JobCategory.catering:
        return StringRes.catering.tr;
      case JobCategory.foodStyling:
        return StringRes.foodStyling.tr;
      case JobCategory.florist:
        return StringRes.florist.tr;
    }
  }
}