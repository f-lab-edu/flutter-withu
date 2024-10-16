import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

abstract class JobPostingRepository {
  /// 공고 목록 조회
  Future<List<JobPostingsItemModel>?> searchJobPostings({
    required JobPostingStatusType status,
    required int page,
  });

  /// 공고 등록
  Future<ApiResponse<JobPostingDetailDto>> createJobPosting({
    required JobPostingRequestDto dto,
  });
}
