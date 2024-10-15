import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

class JobPostingMockApi extends JobPostingApi with MockAPI {
  @override
  FutureOr<List<JobPostingsItemModel>> fetchList({
    required JobPostingStatusType status,
    required int page,
  }) async {
    try {
      final list = List<JobPostingsItemModel>.generate(
        30,
        (int index) => JobPostingsItemModel(
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

  @override
  FutureOr<ApiResponse<JobPostingDetailModel>> createJobPosting({
    required JobPostingRequestDto requestData,
  }) async {
    final JobPostingDetailModel responseData = JobPostingDetailModel.fromJson({
      'id': '1',
      ...requestData.toJson(),
    });
    try {
      dioAdapter.onGet(
        url,
        (server) => server.reply(
          200,
          responseData,
          delay: const Duration(seconds: 1),
        ),
      );

      final response = await dio.get(url);

      if (response.statusCode == 200) {
        final detail = JobPostingDetailModel.fromJson(response.data);
        return ApiResponse.success(detail);
      }

      final fail = FailResponse.fromJson(response.data);
      return ApiResponse.fail(fail);
    } catch (e) {
      return const ApiResponse.error();
    }
  }
}
