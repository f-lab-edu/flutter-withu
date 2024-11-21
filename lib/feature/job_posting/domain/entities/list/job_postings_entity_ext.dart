part of 'job_postings_entity.dart';

extension JobPostingsEntityParser on JobPostingsEntity {
  static JobPostingsEntity fromDto(JobPostingsDto dto) {
    return JobPostingsEntity(
      isLast: dto.isLast,
      jobPostingItems: dto.content
          .map(
            (dto) => JobPostingsItemEntityParser.fromDto(dto),
          )
          .toList(),
    );
  }
}
