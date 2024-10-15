import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

class JobPostingApiImpl extends JobPostingApi {
  @override
  FutureOr<List<JobPostingsItemModel>> fetchList({
    required JobPostingStatusType status,
    required int page,
  }) async {
    return [];
  }

  @override
  FutureOr<ApiResponse<JobPostingDetailModel>> createJobPosting({
    required JobPostingRequestDto requestData,
  }) {
    // TODO: implement postJobPosting
    return const ApiResponse.error();
  }
}
