import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/feature/job_posting/domain/entities/job_posting_detail_entity.dart';
import 'package:withu_app/shared/data/data.dart';

part 'usecases_impl.dart';

abstract class JobPostingUseCase {
  /// 공고 목록 조회
  Future<List<JobPostingEntity>?> searchJobPostings({
    required JobPostingStatusType status,
    required int page,
  });

  /// 공고 등록
  Future<bool> createJobPosting(JobPostingRequestEntity entity);

  /// 공고 상세 조회
  Future<Either<JobPostingDetailEntity>> getJobPosting({
    required String jobPostingId,
  });

  /// 공고 마감
  Future<Either<JobPostingDetailEntity>> closeJobPosting({
    required String jobPostingId,
  });

  /// 공고 삭제
  Future<Either<bool>> deleteJobPosting({
    required String jobPostingId,
  });
}
