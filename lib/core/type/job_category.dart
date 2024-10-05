/// 직업 종류
enum JobCategory {
  /// 촬영
  photography('촬영'),

  /// 케이터링
  catering('케이터링'),

  /// 푸드스타일링
  foodStyling('푸드스타일링'),

  /// 플라워리스트
  florist('플라워리스트');

  const JobCategory(this.displayName);

  final String displayName;
}
