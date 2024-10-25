import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/shared/data/data.dart';

class JobPostingRepositoryImpl implements JobPostingRepository {
  final JobPostingApi api;

  JobPostingRepositoryImpl({
    required this.api,
  });

  /// 공고 목록 조회
  @override
  Future<ApiResponse<JobPostingsDto>> searchJobPostings({
    required JobPostingStatusType status,
    required int page,
  }) async {
    return await api.fetchList(status: status, page: page);
  }

  /// 공고 등록
  @override
  Future<ApiResponse<JobPostingDetailDto>> createJobPosting({
    required JobPostingRequestDto dto,
  }) async {
    return await api.createJobPosting(requestData: dto);
  }

  /// 공고 수정
  @override
  Future<ApiResponse<JobPostingDetailDto>> updateJobPosting({
    required String jobPostingId,
    required JobPostingRequestDto dto,
  }) async {
    return await api.updateJobPosting(
      jobPostingId: jobPostingId,
      requestData: dto,
    );
  }

  /// 공고 상세 조회
  @override
  Future<ApiResponse<JobPostingDetailDto>> getJobPosting({
    required String jobPostingId,
  }) async {
    return await api.getJobPosting(jobPostingId: jobPostingId);
  }

  /// 공고 마감
  @override
  Future<ApiResponse<JobPostingDetailDto>> closeJobPosting({
    required String jobPostingId,
  }) async {
    return await api.closeJobPosting(jobPostingId: jobPostingId);
  }

  /// 공고 삭제
  @override
  Future<ApiResponse<DeleteResponseDto>> deleteJobPosting({
    required String jobPostingId,
  }) async {
    return await api.deleteJobPosting(jobPostingId: jobPostingId);
  }

  /// 지원자 목록
  @override
  Future<ApiResponse<JobPostingWorkersDto>> searchJobPostingWorkers({
    required String jobPostingId,
    required int page,
  }) async {
    return await api.searchJobPostingWorkers(
      jobPostingId: jobPostingId,
      page: page,
    );
  }
}
