import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

abstract class JobPostingUseCase {
  Future<List<JobPostingEntity>?> getJobPostings({
    required JobPostingStatusType status,
    required int page,
  });
}

class JobPostingUseCaseImpl implements JobPostingUseCase {
  final JobPostingRepository repository;

  JobPostingUseCaseImpl({
    required this.repository,
  });

  @override
  Future<List<JobPostingEntity>?> getJobPostings({
    required JobPostingStatusType status,
    required int page,
  }) async {
    try {
      final List<JobPostingModel>? result = await repository.getJobPostings(
        status: status,
        page: page,
      );

      final entities = result
          ?.map(
            (dto) => JobPostingEntity(
              id: dto.id,
              title: dto.title,
              category: dto.category,
              startDate: dto.startDate,
              endDate: dto.endDate,
              current: dto.current,
              max: dto.max,
            ),
          )
          .toList();

      return entities;
    } catch (e) {
      logger.e(e);
      return null;
    }
  }
}
