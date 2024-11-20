part of 'job_postings_item_entity.dart';

extension JobPostingsItemEntityParser on JobPostingsItemEntity {
  /// DTO -> Entity
  static JobPostingsItemEntity fromDto(JobPostingsItemDto dto) {
    return JobPostingsItemEntity(
      id: dto.id,
      title: dto.title,
      category: dto.category,
      startDate: dto.startDate,
      endDate: dto.endDate,
      status: dto.status,
      currentMemberCount: dto.currentMemberCount,
      maxMemberCount: dto.maxMemberCount,
    );
  }
}
