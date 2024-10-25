part of 'usecases.dart';

class JobPostingUseCaseImpl implements JobPostingUseCase {
  final JobPostingRepository repository;

  JobPostingUseCaseImpl({
    required this.repository,
  });

  /// 공고 목록 조회
  @override
  Future<Either<JobPostingsEntity>> searchJobPostings({
    required JobPostingStatusType status,
    required int page,
  }) async {
    final result = await repository.searchJobPostings(
      status: status,
      page: page,
    );

    return result.maybeWhen(
      success: (JobPostingsDto dto) {
        return Either.success(JobPostingsEntityParser.fromDto(dto));
      },
      orElse: () {
        return Either.fail(StringRes.serverError.tr);
      },
    );
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
  Future<Either<JobPostingDetailEntity>> getJobPosting({
    required String jobPostingId,
  }) async {
    final result = await repository.getJobPosting(jobPostingId: jobPostingId);

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
  Future<Either<JobPostingDetailEntity>> closeJobPosting({
    required String jobPostingId,
  }) async {
    final result = await repository.closeJobPosting(jobPostingId: jobPostingId);

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

  /// 지원자 목록
  @override
  Future<Either<JobPostingWorkersEntity>> searchJobPostingWorkers({
    required String jobPostingId,
    required int page,
  }) async {
    final result = await repository.searchJobPostingWorkers(
      jobPostingId: jobPostingId,
      page: page,
    );

    return result.maybeWhen(
      success: (JobPostingWorkersDto dto) {
        return Either.success(JobPostingWorkersEntityExt.fromDto(dto));
      },
      orElse: () {
        return Either.fail(StringRes.serverError.tr);
      },
    );
  }
}

extension on JobPostingUseCase {
  /// 입력 데이터 유효성 검사.
  bool isValidEntity(JobPostingRequestEntity entity) {
    if (entity.title.isEmpty) {
      logger.i('공고 제목을 입력해 주세요.');
      return false;
    }

    if (entity.content.isEmpty) {
      logger.i('근무내용을 입력해 주세요.');
      return false;
    }

    if (entity.content.isEmpty) {
      logger.i('근무내용을 입력해 주세요.');
      return false;
    }

    if (entity.categoryType == null) {
      logger.i('카테고리를 선택해 주세요.');
      return false;
    }

    if (entity.contractType == null) {
      logger.i('기간형식을 선택해 주세요.');
      return false;
    }

    if (entity.contractStartDate == null) {
      logger.i('근로 계약 기간을 선택해 주세요.');
      return false;
    }

    if (entity.contractType == ContractType.long &&
        entity.contractEndDate == null) {
      logger.i('근로 계약 종료 기간을 선택해 주세요.');
      return false;
    }

    if (!entity.isTBC && entity.workStartTime == null) {
      logger.i('근무 시작 시간을 선택해 주세요.');
      return false;
    }

    if (!entity.isTBC && entity.workEndTime == null) {
      logger.i('근무 종료 시간을 선택해 주세요.');
      return false;
    }

    final participants = int.tryParse(entity.participants);
    if (participants == null || participants <= 0) {
      logger.i('모집인원을 0명 이상 입력해 주세요.');
      return false;
    }

    if (entity.payType == null) {
      logger.i('급여 방법을 선택해 주세요.');
      return false;
    }

    final payAmount = int.tryParse(entity.payAmount);
    if (payAmount == null || payAmount <= 0) {
      logger.i('급여를 0원 이상 입력해 주세요.');
      return false;
    }

    if (entity.workAddress.isEmpty) {
      logger.i('주소를 입력해 주세요.');
      return false;
    }

    if (entity.preferredQualifications.isEmpty) {
      logger.i('우대사항을 입력해 주세요.');
      return false;
    }

    if (entity.hasTravelTime && entity.isTravelTimePaid == null) {
      logger.i('이동시간 급여 여부를 선택해 주세요.');
      return false;
    }

    if (entity.hasBreakTime && entity.isBreakTimePaid == null) {
      logger.i('휴게시간 급여 여부를 선택해 주세요.');
      return false;
    }

    return true;
  }
}
