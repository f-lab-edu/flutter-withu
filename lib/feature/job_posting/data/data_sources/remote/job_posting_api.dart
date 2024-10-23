import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/shared/data/data.dart';

abstract class JobPostingApi extends API {
  /// 공고 목록
  FutureOr<List<JobPostingsItemModel>> search({
    required JobPostingStatusType status,
    required int page,
  });

  /// 공고 생성
  FutureOr<ApiResponse<JobPostingDetailDto>> create({
    required JobPostingRequestDto requestData,
  });

  /// 공고 수정
  FutureOr<ApiResponse<JobPostingDetailDto>> updateJobPosting({
    required String jobPostingId,
    required JobPostingRequestDto requestData,
  });

  /// 공고 상세 조회
  FutureOr<ApiResponse<JobPostingDetailDto>> get({
    required String id,
  });

  /// 공고 마감
  FutureOr<ApiResponse<JobPostingDetailDto>> close({
    required String id,
  });

  /// 공고 삭제
  FutureOr<ApiResponse<DeleteResponseDto>> deleteJobPosting({
    required String jobPostingId,
  });

  /// 공고 삭제
  FutureOr<ApiResponse<DeleteResponseDto>> deleteJobPosting({
    required String jobPostingId,
  });
}
