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

  /// 공고 등록/수정
  @override
  Future<bool> submitJobPosting({
    required JobPostingRequestEntity entity,
    String? jobPostingId,
  }) async {
    if (!isValidEntity(entity)) {
      return false;
    }

    final JobPostingRequestDto? dto = entity.toDto();

    if (dto == null) {
      return false;
    }

    late final ApiResponse<JobPostingDetailDto> result;

    if (jobPostingId == null) {
      result = await _createJobPosting(dto: dto);
    } else {
      result = await _updateJobPosting(
        jobPostingId: jobPostingId,
        dto: dto,
      );
    }

    return result.maybeWhen<bool>(success: (_) => true, orElse: () => false);
  }

  /// 공고 등록
  Future<ApiResponse<JobPostingDetailDto>> _createJobPosting({
    required JobPostingRequestDto dto,
  }) {
    return repository.createJobPosting(dto: dto);
  }

  /// 공고 수정
  Future<ApiResponse<JobPostingDetailDto>> _updateJobPosting({
    required String jobPostingId,
    required JobPostingRequestDto dto,
  }) {
    return repository.updateJobPosting(
      jobPostingId: jobPostingId,
      dto: dto,
    );
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
