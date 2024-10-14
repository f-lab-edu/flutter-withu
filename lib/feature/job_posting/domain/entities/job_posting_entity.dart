import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

class JobPostingEntity {
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

  JobPostingEntity({
    required this.id,
    required this.title,
    required this.category,
    required this.startDate,
    required this.endDate,
    required this.status,
    required this.currentMemberCount,
    required this.maxMemberCount,
  });

  factory JobPostingEntity.fromModel(JobPostingsItemModel model) {
    final JobPostingsItemModel(
      :id,
      :title,
      :category,
      :startDate,
      :endDate,
      :status,
      :currentMemberCount,
      :maxMemberCount,
    ) = model;

    return JobPostingEntity(
      id: id,
      title: title,
      category: category,
      startDate: startDate,
      endDate: endDate,
      status: status,
      currentMemberCount: currentMemberCount,
      maxMemberCount: maxMemberCount,
    );
  }
}
