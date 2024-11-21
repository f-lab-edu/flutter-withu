import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/entities/list/job_postings_item_entity.dart';

part 'job_postings_entity_ext.dart';

class JobPostingsEntity {
  /// 지원자 목록
  final List<JobPostingsItemEntity> jobPostingItems;

  /// 마지막 여부
  final bool isLast;

  JobPostingsEntity({
    required this.jobPostingItems,
    required this.isLast,
  });
}
