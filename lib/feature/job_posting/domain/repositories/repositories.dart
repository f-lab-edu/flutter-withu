import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/shared/data/data.dart';

abstract class JobPostingRepository {
  /// 공고 목록 조회
  Future<List<JobPostingsItemModel>?> searchJobPostings({
    required JobPostingStatusType status,
    required int page,
  });

  /// 공고 등록
  Future<ApiResponse<JobPostingDetailDto>> createJobPosting({
    required JobPostingRequestDto dto,
  });

  /// 공고 상세 조회
  Future<ApiResponse<JobPostingDetailDto>> getJobPosting({
    required String jobPostingId,
  });

  /// 공고 마감
  Future<ApiResponse<JobPostingDetailDto>> closeJobPosting({
    required String jobPostingId,
  });

  /// 공고 삭제
  Future<ApiResponse<DeleteResponseDto>> deleteJobPosting({
    required String jobPostingId,
  });
}
