import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

abstract class JobPostingApi extends API {
  /// 공고 목록
  FutureOr<List<JobPostingsItemModel>> fetchList({
    required JobPostingStatusType status,
    required int page,
  });

  /// 공고 생성
  FutureOr<ApiResponse<JobPostingDetailModel>> createJobPosting({
    required JobPostingRequestDto requestData,
  });
}
