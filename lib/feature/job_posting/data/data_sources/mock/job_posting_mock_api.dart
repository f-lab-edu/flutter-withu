import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/shared/data/data.dart';

class JobPostingMockApi extends JobPostingApi with MockAPI {
  /// 공고 목록
  @override
  FutureOr<ApiResponse<JobPostingsDto>> search({
    required JobPostingStatusType status,
    required int page,
  }) async {
    try {
      dioAdapter.onGet(
        '$path?page=$page&status=${status.serverKey}',
        (server) => server.reply(
          200,
          JobPostingsDtoMock.mock(
            page: page,
            status: status,
          ).toJson(),
          delay: const Duration(seconds: 1),
        ),
      );

      final response = await dio.get(
        '$path?page=$page&status=${status.serverKey}',
      );

      if (response.statusCode == 200) {
        return ApiResponse.success(
          JobPostingsDto.fromJson(response.data),
        );
      }

      return ApiResponse.fail(
        FailResponse.fromJson(response.data),
      );
    } catch (e) {
      return const ApiResponse.error();
    }
  }

  /// 공고 등록
  @override
  FutureOr<ApiResponse<JobPostingDetailDto>> create({
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
  FutureOr<ApiResponse<JobPostingDetailDto>> update({
    required String id,
    required JobPostingRequestDto requestData,
  }) async {
    try {
      final fullPath = '$path/$id';

      dioAdapter.onPut(
        fullPath,
        (server) => server.reply(
          200,
          JobPostingDetailDto.mock(id: id).toJson(),
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
  FutureOr<ApiResponse<JobPostingDetailDto>> get({
    required String id,
  }) async {
    try {
      final fullPath = '$path/$id';

      dioAdapter.onGet(
        fullPath,
        (server) => server.reply(
          200,
          JobPostingDetailDto.mock(id: id).toJson(),
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
  FutureOr<ApiResponse<JobPostingDetailDto>> close({
    required String id,
  }) async {
    try {
      final fullPath = '$path/$id';

      dioAdapter.onPut(
        fullPath,
        (server) => server.reply(
          200,
          JobPostingDetailDto.mock(id: id).toJson(),
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
  FutureOr<ApiResponse<DeleteResponseDto>> delete({
    required String id,
  }) async {
    try {
      final fullPath = '$path/$id';

      dioAdapter.onDelete(
        fullPath,
        (server) => server.reply(
          200,
          DeleteResponseDto.mockSuccess(id: id).toJson(),
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
          JobPostingWorkersDtoExt.mock(page: page),
          delay: const Duration(milliseconds: 300),
        ),
      );

      final response = await dio.get(path);

      if (response.statusCode == 200) {
        return ApiResponse.success(
          JobPostingWorkersDto.fromJson(
            response.data,
          ),
        );
      }
      return ApiResponse.fail(FailResponse.fromJson(response.data));
    } catch (e) {
      logger.e(e);
      return const ApiResponse.error();
    }
  }
}
