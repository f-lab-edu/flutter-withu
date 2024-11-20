import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data_sources/dto/list/job_postings_item_dto.dart';

part 'job_postings_item_entity_ext.dart';

/// 공고 목록 아이템 엔티티
class JobPostingsItemEntity {
  /// id
  final String id;

  /// 공고명
  final String title;

  /// 카테고리
  final JobCategoryType category;

  /// 시작날짜
  final DateTime startDate;

  /// 종료날짜
  final DateTime? endDate;

  /// 상태
  final JobPostingStatusType status;

  /// 현재 지원한 인원 수
  final int currentMemberCount;

  /// 최대 인원 수
  final int maxMemberCount;

  JobPostingsItemEntity({
    required this.id,
    required this.title,
    required this.category,
    required this.startDate,
    required this.endDate,
    required this.status,
    required this.currentMemberCount,
    required this.maxMemberCount,
  });
}
