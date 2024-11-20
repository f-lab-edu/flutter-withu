import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/shared/data/data.dart';

class JobPostingRepositoryImpl implements JobPostingRepository {
  final JobPostingApi jobPostingApi;

  JobPostingRepositoryImpl({
    required this.jobPostingApi,
  });

  /// 공고 목록 조회
  @override
  Future<List<JobPostingsItemModel>?> search({
    required JobPostingStatusType status,
    required int page,
  }) async {
    try {
      return await jobPostingApi.search(
        status: status,
        page: page,
      );
    } catch (e) {
      logger.e(e);
      return null;
    }
  }

  /// 공고 등록
  @override
  Future<ApiResponse<JobPostingDetailDto>> create({
    required JobPostingRequestDto dto,
  }) async {
    return await jobPostingApi.create(requestData: dto);
  }

  /// 공고 수정
  @override
  Future<ApiResponse<JobPostingDetailDto>> update({
    required String id,
    required JobPostingRequestDto dto,
  }) async {
    return await jobPostingApi.update(
      id: id,
      requestData: dto,
    );
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
  Future<ApiResponse<JobPostingDetailDto>> get({
    required String id,
  }) async {
    return await jobPostingApi.get(id: id);
  }

  /// 공고 마감
  @override
  Future<ApiResponse<JobPostingDetailDto>> close({
    required String id,
  }) async {
    return await jobPostingApi.close(id: id);
  }

  /// 공고 삭제
  @override
  Future<ApiResponse<DeleteResponseDto>> delete({
    required String id,
  }) async {
    return await jobPostingApi.delete(id: id);
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
