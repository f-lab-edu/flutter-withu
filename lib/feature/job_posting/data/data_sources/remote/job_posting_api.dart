import 'package:dio/dio.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

abstract class JobPostingApi {
  Future<List<JobPostingModel>?> fetchList({
    required JobPostingStatusType status,
    required int page,
  });
}

class JobPostingApiImpl extends JobPostingApi {
  final Dio dio = Dio();

  @override
  Future<List<JobPostingModel>?> fetchList({
    required JobPostingStatusType status,
    required int page,
  }) async {
    try {
      // final Response response = await dio.get('../mock/job_postings.json');

      return List.generate(
        30,
        (int index) => JobPostingModel(
          id: '$index',
          title: '공고명 #${index + (page * 30)}',
          status: status,
          category: JobCategory.values[index % 4],
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          current: index % 3,
          max: 3,
        ),
      );
    } catch (e) {
      logger.e(e);
      return null;
    }
  }
}
