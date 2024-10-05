import 'package:withu_app/core/core.dart';

class JobPostingEntity {
  /// id
  final String id;

  /// 공고명
  final String title;

  /// 카테고리
  final JobCategory category;

  /// 시작날짜
  final DateTime startDate;

  /// 종료날짜
  final DateTime? endDate;

  /// 현재 지원한 인원 수
  final int current;

  /// 최대 인원 수
  final int max;

  JobPostingEntity({
    required this.id,
    required this.title,
    required this.category,
    required this.startDate,
    required this.endDate,
    required this.current,
    required this.max,
  });
}
