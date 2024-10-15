import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

abstract class JobPostingUseCase {
  /// 공고 목록 조회
  Future<List<JobPostingEntity>?> searchJobPostings({
    required JobPostingStatusType status,
    required int page,
  });

  /// 공고 등록
  Future<bool> createJobPosting(JobPostingRequestEntity entity);
}

class JobPostingUseCaseImpl implements JobPostingUseCase {
  final JobPostingRepository repository;

  JobPostingUseCaseImpl({
    required this.repository,
  });

  @override
  Future<List<JobPostingEntity>> searchJobPostings({
    required JobPostingStatusType status,
    required int page,
  }) async {
    try {
      final List<JobPostingsItemModel>? result =
          await repository.searchJobPostings(
        status: status,
        page: page,
      );

      return result?.map(JobPostingEntity.fromModel).toList() ?? [];
    } catch (e) {
      logger.e(e);
      return [];
    }
  }

  @override
  Future<bool> createJobPosting(JobPostingRequestEntity entity) async {
    final JobPostingRequestEntity(
      :companyId,
      :title,
      :content,
      :categoryType,
      :contractType,
      :contractStartDate,
      :contractEndDate,
      :isTBC,
      :payType,
      :payAmount,
      :workAddress,
      :participants,
      :hasCommute,
      :isCommutePaid,
      :hasBreakTime,
      :isBreakTimePaid,
      :isMealProvided,
      :isUrgent,
      :preferredQualifications,
      :workStartTime,
      :workEndTime,
    ) = entity;

    final JobPostingRequestDto dto = JobPostingRequestDto(
      companyId: companyId,
      title: title,
      content: content,
      specialtyField: categoryType.name.toUpperCase(),
      contractType: contractType.name.toUpperCase(),
      contractStartDate: contractStartDate,
      contractEndDate: contractEndDate,
      isTimeUndecided: isTBC,
      payType: payType.name.toUpperCase(),
      payAmount: payAmount,
      workAddress: workAddress,
      participants: participants,
      hasTravelTime: hasCommute,
      isTravelTimePaid: isCommutePaid,
      hasBreakTime: hasBreakTime,
      isBreakTimePaid: isBreakTimePaid,
      isMealProvided: isMealProvided,
      isUrgent: isUrgent,
      preferredQualifications: preferredQualifications,
      workStartTime: workStartTime,
      workEndTime: workEndTime,
    );

    final result = await repository.createJobPosting(dto: dto);

    return result is JobPostingDetailModel;
  }
}
