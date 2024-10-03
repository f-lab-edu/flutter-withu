import 'package:dio/dio.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

abstract class JobPostingApi {
  Future<List<JobPosting>?> fetchList();
}

class JobPostingApiImpl extends JobPostingApi {
  final Dio dio = Dio();

  @override
  Future<List<JobPosting>?> fetchList({
    int page = 0,
  }) async {
    try {
      final Response response = await dio.get('../mock/job_postings.json');

      logger.i(response);
      return [];
    } catch (e) {
      logger.e(e);
      return null;
    }
  }
}
