import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

class JobPostingApiImpl extends JobPostingApi {
  @override
  FutureOr<List<JobPostingModel>> fetchList({
    required JobPostingStatusType status,
    required int page,
  }) async {
    return [];
  }
}
