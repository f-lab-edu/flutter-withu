import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

class JobPostingRepositoryImpl implements JobPostingRepository {
  final JobPostingApi api;

  JobPostingRepositoryImpl({
    required this.api,
  });

  /// 공고 목록 조회
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

  /// 공고 등록
  @override
  Future<ApiResponse<JobPostingDetailDto>> createJobPosting({
    required JobPostingRequestDto dto,
  }) async {
    return await api.createJobPosting(requestData: dto);
  }

  /// 공고 상세 조회
  @override
  Future<ApiResponse<JobPostingDetailDto>> getJobPosting({
    required String jobPostingId,
  }) async {
    return await api.getJobPosting(jobPostingId: jobPostingId);
  }

  /// 공고 상세 조회
  @override
  Future<ApiResponse<JobPostingDetailDto>> closeJobPosting({
    required String jobPostingId,
  }) async {
    return await api.closeJobPosting(jobPostingId: jobPostingId);
  }
}
