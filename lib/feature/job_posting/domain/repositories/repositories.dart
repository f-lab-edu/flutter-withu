import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/shared/data/data.dart';

abstract class JobPostingRepository {
  /// 공고 목록 조회
  Future<List<JobPostingsItemModel>?> search({
    required JobPostingStatusType status,
    required int page,
  });

  /// 공고 등록
  Future<ApiResponse<JobPostingDetailDto>> create({
    required JobPostingRequestDto dto,
  });

  /// 공고 수정
  Future<ApiResponse<JobPostingDetailDto>> update({
    required String id,
    required JobPostingRequestDto dto,
  });


  /// 공고 상세 조회
  Future<ApiResponse<JobPostingDetailDto>> get({
    required String id,
  });

  /// 공고 마감
  Future<ApiResponse<JobPostingDetailDto>> close({
    required String id,
  });

  /// 공고 삭제
  Future<ApiResponse<DeleteResponseDto>> delete({
    required String id,
  });

  /// 지원자 목록
  Future<ApiResponse<JobPostingWorkersDto>> searchJobPostingWorkers({
    required String jobPostingId,
    required int page,
  });
}
