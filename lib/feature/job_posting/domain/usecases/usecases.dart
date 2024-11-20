import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/feature/job_posting/domain/entities/list/job_postings_entity.dart';
import 'package:withu_app/shared/data/data.dart';

part 'usecases_impl.dart';

abstract class JobPostingUseCase {
  /// 공고 목록 조회
  Future<Either<JobPostingsEntity>> searchJobPostings({
    required JobPostingStatusType status,
    required int page,
  });

  /// 공고 등록/수정
  Future<bool> submitJobPosting({
    required JobPostingRequestEntity entity,
    String? jobPostingId
  });


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

  /// 지원자 목록
  Future<Either<JobPostingWorkersEntity>> searchJobPostingWorkers({
    required String jobPostingId,
    required int page,
  });
}
