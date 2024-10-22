import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

class JobPostingMockApi extends JobPostingApi with MockAPI {
  /// 공고 목록
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

  /// 공고 등록
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> createJobPosting({
    required JobPostingRequestDto requestData,
  }) async {
    final JobPostingDetailDto responseData = JobPostingDetailDto.fromJson({
      'id': '1',
      'latitude': 37.5664056,
      'longitude': 126.9778222,
      ...requestData.toJson(),
    });

    try {
      dioAdapter.onPost(
        url,
        (server) => server.reply(
          200,
          responseData.toJson(),
          delay: const Duration(seconds: 1),
        ),
      );

      final response = await dio.post(url);

      if (response.statusCode == 200) {
        return ApiResponse.success(
          JobPostingDetailDto.fromJson(response.data),
        );
      }

      return ApiResponse.fail(
        FailResponse.fromJson(response.data),
      );
    } catch (e) {
      return const ApiResponse.error();
    }
  }

  /// 공고 상세 조회
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> getJobPosting({
    required String jobPostingId,
  }) async {
    try {
      dioAdapter.onGet(
        url,
        (server) => server.reply(
          200,
          JobPostingDetailDto.mock(id: jobPostingId).toJson(),
          delay: const Duration(milliseconds: 300),
        ),
      );

      final response = await dio.get(url);

      if (response.statusCode == 200) {
        return ApiResponse.success(
          JobPostingDetailDto.fromJson(response.data),
        );
      }

      return ApiResponse.fail(
        FailResponse.fromJson(response.data),
      );
    } catch (e) {
      return const ApiResponse.error();
    }
  }

  /// 공고 마감
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> closeJobPosting({
    required String jobPostingId,
  }) async {
    try {
      dioAdapter.onPut(
        url,
        (server) => server.reply(
          200,
          JobPostingDetailDto.mock(id: jobPostingId).toJson(),
          delay: const Duration(milliseconds: 1000),
        ),
      );

      final response = await dio.put(url);

      if (response.statusCode == 200) {
        return ApiResponse.success(
          JobPostingDetailDto.fromJson(response.data),
        );
      }

      return ApiResponse.fail(
        FailResponse.fromJson(response.data),
      );
    } catch (e) {
      return const ApiResponse.error();
    }
  }
}
