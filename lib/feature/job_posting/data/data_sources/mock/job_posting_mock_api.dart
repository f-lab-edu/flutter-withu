import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/shared/data/data.dart';

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
    try {
      dioAdapter.onPost(
        path,
        (server) => server.reply(
          200,
          JobPostingDetailDto.mock(id: '1').toJson(),
          delay: const Duration(seconds: 1),
        ),
        data: requestData.toJson(),
      );

      final response = await dio.post(
        path,
        data: requestData.toJson(),
      );

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

  /// 공고 수정
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> updateJobPosting({
    required String jobPostingId,
    required JobPostingRequestDto requestData,
  }) async {
    try {
      final fullPath = '$path/$jobPostingId';

      dioAdapter.onPut(
        fullPath,
        (server) => server.reply(
          200,
          JobPostingDetailDto.mock(id: jobPostingId).toJson(),
          delay: const Duration(seconds: 1),
        ),
        data: requestData.toJson(),
      );

      final response = await dio.put(
        fullPath,
        data: requestData.toJson(),
      );

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
      final fullPath = '$path/$jobPostingId';

      dioAdapter.onGet(
        fullPath,
        (server) => server.reply(
          200,
          JobPostingDetailDto.mock(id: jobPostingId).toJson(),
          delay: const Duration(milliseconds: 300),
        ),
      );

      final response = await dio.get(fullPath);

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
      final fullPath = '$path/$jobPostingId';

      dioAdapter.onPut(
        fullPath,
        (server) => server.reply(
          200,
          JobPostingDetailDto.mock(id: jobPostingId).toJson(),
          delay: const Duration(milliseconds: 1000),
        ),
      );

      final response = await dio.put(fullPath);

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

  /// 공고 삭제
  @override
  FutureOr<ApiResponse<DeleteResponseDto>> deleteJobPosting({
    required String jobPostingId,
  }) async {
    try {
      final fullPath = '$path/$jobPostingId';

      dioAdapter.onDelete(
        fullPath,
        (server) => server.reply(
          200,
          DeleteResponseDto.mockSuccess(id: jobPostingId).toJson(),
          delay: const Duration(milliseconds: 1000),
        ),
      );

      final response = await dio.delete(fullPath);
      return ApiResponse.success(
        DeleteResponseDto.fromJson(response.data),
      );
    } catch (e) {
      return const ApiResponse.error();
    }
  }

  /// 지원자 목록
  @override
  FutureOr<ApiResponse<JobPostingWorkersDto>> searchJobPostingWorkers({
    required String jobPostingId,
    required int page,
  }) async {
    const path = '/workers';
    try {
      dioAdapter.onGet(
        path,
        (server) => server.reply(
          200,
          JobPostingWorkersDtoExt.mock(page: page).toJson(),
          delay: const Duration(milliseconds: 300),
        ),
      );

      final response = await dio.get(path);

      if (response.statusCode == 200) {
        return ApiResponse.success(
          JobPostingWorkersDto.fromJson(response.data),
        );
      }
      return ApiResponse.fail(FailResponse.fromJson(response.data));
    } catch (e) {
      logger.e(e);
      return const ApiResponse.error();
    }
  }
}
