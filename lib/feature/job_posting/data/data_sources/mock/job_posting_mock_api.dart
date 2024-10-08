import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

class JobPostingMockApi extends JobPostingApi with MockAPI {
  @override
  FutureOr<List<JobPostingModel>> fetchList({
    required JobPostingStatusType status,
    required int page,
  }) async {
    try {
      final list = List<JobPostingModel>.generate(
        30,
        (int index) => JobPostingModel(
          id: '$index',
          title: '공고명 #${index + (page * 30)}',
          status: status,
          category: JobCategoryType.values[index % 4],
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          currentMemberCount: index % 3,
          maxMemberCount: 3,
        ),
      );

      dioAdapter.onGet(
        url,
        (server) => server.reply(
          200,
          JobPostingsModel(contents: list),
          delay: const Duration(seconds: 1),
        ),
      );

      final response = await dio.get(url);

      if (response.statusCode == 200) {
        return JobPostingsModel.fromJson(response.data).contents ?? [];
      }
      return [];
    } catch (e) {
      logger.e(e);
      return [];
    }
  }
}
