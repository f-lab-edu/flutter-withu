import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

class JobPostingRepositoryImpl implements JobPostingRepository {
  final JobPostingApi api;

  JobPostingRepositoryImpl({
    required this.api,
  });

  @override
  Future<List<JobPosting>?> getJobPostings() async {
    try {
      final result = await api.fetchList();
      return result;
    } catch (e) {
      logger.e(e);
      return null;
    }
  }
}
