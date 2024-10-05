import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

class JobPostingRepositoryImpl implements JobPostingRepository {
  final JobPostingApi api;

  JobPostingRepositoryImpl({
    required this.api,
  });

  @override
  Future<List<JobPostingModel>?> getJobPostings({
    required JobPostingStatusType status,
    required int page,
  }) async {
    try {
      final result = await api.fetchList(status: status, page: page);
      await Future.delayed(const Duration(seconds: 1));
      return result;
    } catch (e) {
      logger.e(e);
      return null;
    }
  }
}
