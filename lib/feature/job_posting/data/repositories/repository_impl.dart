import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

class JobPostingRepositoryImpl implements JobPostingRepository {
  final JobPostingApi api;

  JobPostingRepositoryImpl({
    required this.api,
  });

  @override
  Future<List<JobPostingsItemModel>?> searchJobPostings({
    required JobPostingStatusType status,
    required int page,
  }) async {
    try {
      return await api.fetchList(status: status, page: page);
    } catch (e) {
      logger.e(e);
      return null;
    }
  }

  @override
  Future<ApiResponse<JobPostingDetailModel>> createJobPosting({
    required JobPostingRequestDto dto,
  }) async {
    return await api.createJobPosting(requestData: dto);
  }
}
