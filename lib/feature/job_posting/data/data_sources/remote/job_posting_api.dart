import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/shared/data/data.dart';

abstract class JobPostingApi extends API {
  /// 공고 목록
  FutureOr<List<JobPostingsItemModel>> fetchList({
    required JobPostingStatusType status,
    required int page,
  });

  /// 공고 생성
  FutureOr<ApiResponse<JobPostingDetailDto>> createJobPosting({
    required JobPostingRequestDto requestData,
  });

  /// 공고 수정
  FutureOr<ApiResponse<JobPostingDetailDto>> updateJobPosting({
    required String jobPostingId,
    required JobPostingRequestDto requestData,
  });

  /// 공고 상세 조회
  FutureOr<ApiResponse<JobPostingDetailDto>> getJobPosting({
    required String jobPostingId,
  });

  /// 공고 마감
  FutureOr<ApiResponse<JobPostingDetailDto>> closeJobPosting({
    required String jobPostingId,
  });

  /// 공고 삭제
  FutureOr<ApiResponse<DeleteResponseDto>> deleteJobPosting({
    required String jobPostingId,
  });
}
