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
      final responseData = JobPostingDetailDto(
        id: jobPostingId,
        companyId: '1',
        title: '공고제목입니다:)',
        content: '열심히 일하시면 됩니다.',
        specialtyField: JobCategoryType.catering,
        contractType: ContractType.short,
        contractStartDate: DateTime.now(),
        contractEndDate: DateTime.now(),
        isTimeUndecided: true,
        payType: PayType.hour,
        payAmount: 12000,
        workAddress: '서울 동작구 여의대방로22바길 2 2층',
        latitude: 37.5664056,
        longitude: 126.9778222,
        participants: 3,
        hasTravelTime: true,
        isTravelTimePaid: false,
        hasBreakTime: false,
        isBreakTimePaid: false,
        isMealProvided: true,
        isUrgent: false,
        preferredQualifications: '채우기 부르며, 용어로도 보여줄 사용하는 분야에서 같은,',
      );

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
