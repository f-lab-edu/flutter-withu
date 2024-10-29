import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/feature/job_posting/domain/entities/job_posting_detail_entity.dart';

part 'usecases_impl.dart';

abstract class JobPostingUseCase {
  /// 공고 목록 조회
  Future<List<JobPostingEntity>?> search({
    required JobPostingStatusType status,
    required int page,
  });

  /// 공고 등록
  Future<bool> create(JobPostingRequestEntity entity);

  /// 공고 상세 조회
  Future<Either<JobPostingDetailEntity>> get({
    required String jobPostingId,
  });

  /// 공고 마감
  Future<Either<JobPostingDetailEntity>> close({
    required String jobPostingId,
  });
}
