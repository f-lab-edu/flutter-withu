import 'dart:async';

import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/shared/data/data.dart';

class JobPostingApiImpl extends JobPostingApi {
  /// 공고 목록
  @override
  FutureOr<ApiResponse<JobPostingsDto>> search({
    required JobPostingStatusType status,
    required int page,
  }) async {
    return const ApiResponse.error();
  }

  /// 공고 등록
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> create({
    required JobPostingRequestDto requestData,
  }) {
    return const ApiResponse.error();
  }

  /// 공고 수정
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> update({
    required String id,
    required JobPostingRequestDto requestData,
  }) {
    return const ApiResponse.error();
  }

  /// 공고 상세 조회
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> get({
    required String id,
  }) {
    return const ApiResponse.error();
  }

  /// 공고 마감
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> close({
    required String id,
  }) {
    return const ApiResponse.error();
  }

  /// 공고 삭제
  @override
  FutureOr<ApiResponse<DeleteResponseDto>> delete({
    required String id,
  }) {
    return const ApiResponse.error();
  }

  /// 지원자 목록
  @override
  FutureOr<ApiResponse<JobPostingWorkersDto>> searchJobPostingWorkers({
    required String jobPostingId,
    required int page,
  }) {
    return const ApiResponse.error();
  }
}
