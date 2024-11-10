part of 'usecases.dart';

class JobPostingUseCaseImpl implements JobPostingUseCase {
  final JobPostingRepository jobPostingRepo;

  JobPostingUseCaseImpl({
    required this.jobPostingRepo,
  });

  /// 공고 목록 조회
  @override
  Future<List<JobPostingEntity>> search({
    required JobPostingStatusType status,
    required int page,
  }) async {
    try {
      final List<JobPostingsItemModel>? result = await jobPostingRepo.search(
        status: status,
        page: page,
      );

      return result?.map(JobPostingEntity.fromModel).toList() ?? [];
    } catch (e) {
      logger.e(e);
      return [];
    }
  }

  /// 공고 등록
  @override
  Future<bool> create(JobPostingRequestEntity entity) async {
    if (!entity.checkValidation().isValid) {
      return false;
    }

    final result = await jobPostingRepo.create(dto: entity.toDto());

    return result.maybeWhen<bool>(success: (_) => true, orElse: () => false);
  }

  /// 공고 상세 조회
  @override
  Future<Either<JobPostingDetailEntity>> get({
    required String jobPostingId,
  }) async {
    final result = await jobPostingRepo.get(id: jobPostingId);

    return result.when(
      success: (JobPostingDetailDto dto) {
        return Either.success(JobPostingDetailEntity.fromDto(dto));
      },
      fail: (FailResponse fail) {
        return Either.fail(fail.message);
      },
      error: () {
        return Either.fail(StringRes.serverError.tr);
      },
    );
  }

  /// 공고 마감
  @override
  Future<Either<JobPostingDetailEntity>> close({
    required String jobPostingId,
  }) async {
    final result = await jobPostingRepo.close(id: jobPostingId);

    return result.when(
      success: (JobPostingDetailDto dto) {
        return Either.success(JobPostingDetailEntity.fromDto(dto));
      },
      fail: (FailResponse fail) {
        return Either.fail(fail.message);
      },
      error: () {
        return Either.fail(StringRes.serverError.tr);
      },
    );
  }

  /// 공고 삭제
  @override
  Future<Either<bool>> deleteJobPosting({
    required String jobPostingId,
  }) async {
    final result =
        await repository.deleteJobPosting(jobPostingId: jobPostingId);

    return result.maybeWhen(
      success: (DeleteResponseDto dto) {
        return dto.deleted
            ? const Either.success(true)
            : Either.fail(dto.message ?? '');
      },
      orElse: () {
        return Either.fail(StringRes.serverError.tr);
      },
    );
  }
}
