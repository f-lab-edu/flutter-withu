import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/shared/data/data.dart';

class JobPostingApiImpl extends JobPostingApi {
  /// 공고 목록
  @override
  FutureOr<List<JobPostingsItemModel>> fetchList({
    required JobPostingStatusType status,
    required int page,
  }) async {
    return [];
  }

  /// 공고 등록
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> createJobPosting({
    required JobPostingRequestDto requestData,
  }) {
    return const ApiResponse.error();
  }

  /// 공고 상세 조회
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> getJobPosting({
    required String jobPostingId,
  }) {
    return const ApiResponse.error();
  }

  /// 공고 마감
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> closeJobPosting({
    required String jobPostingId,
  }) {
    return const ApiResponse.error();
  }

  /// 공고 삭제
  @override
  FutureOr<ApiResponse<DeleteResponseDto>> deleteJobPosting({
    required String jobPostingId,
  }) {
    return const ApiResponse.error();
  }
}
