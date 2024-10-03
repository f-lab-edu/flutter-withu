import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

abstract class JobPostingUseCase {
  Future<void> getJobPostings();
}

class JobPostingUseCaseImpl implements JobPostingUseCase {
  final JobPostingRepository repository;

  JobPostingUseCaseImpl({
    required this.repository,
  });

  @override
  Future<void> getJobPostings() async {
    try {
      final result = await repository.getJobPostings();
      return result;
    } catch (e) {
      logger.e(e);
    }
  }
}
