import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

/// 공고 상세 엔티티
class JobPostingDetailEntity {
  /// ID
  final String id;

  /// 회사 ID
  final String companyId;

  /// 회사 썸네일.
  final String companyThumbnail;

  /// 회사 이름
  final String companyName;

  /// 공고 조회수
  final int views;

  /// 공고명
  final String title;

  /// 근로 내용
  final String content;

  /// 카테고리
  final JobCategoryType? categoryType;

  /// 계약 타입: 단기, 장기
  final ContractType? contractType;

  /// 근로 시작 날
  final DateTime? contractStartDate;

  /// 근로 종료 날짜
  final DateTime? contractEndDate;

  /// 시간 미정 여부
  final bool isTBC;

  /// 급여 타입: 시급, 일급
  final PayType? payType;

  /// 금액
  final String payAmount;

  /// 근무지 주소
  final String workAddress;

  /// 모집인원
  final String participants;

  /// 이동시간 유무
  final bool hasTravelTime;

  /// 이동시간 급여/비급여
  final bool? isTravelTimePaid;

  /// 휴게시간 여부
  final bool hasBreakTime;

  /// 휴게시간 급여/비급여
  final bool? isBreakTimePaid;

  /// 식사유무
  final bool isMealProvided;

  /// 우대사항
  final String preferredQualifications;

  /// 근무 시작 시간
  final DateTime? workStartTime;

  /// 근무 종료 시간
  final DateTime? workEndTime;

  JobPostingDetailEntity({
    required this.id,
    required this.companyId,
    required this.companyThumbnail,
    required this.companyName,
    required this.views,
    required this.title,
    required this.content,
    required this.isTBC,
    required this.payAmount,
    required this.workAddress,
    required this.participants,
    required this.hasTravelTime,
    required this.hasBreakTime,
    required this.isMealProvided,
    required this.preferredQualifications,
    required this.workStartTime,
    required this.workEndTime,
    this.categoryType,
    this.contractType,
    this.contractStartDate,
    this.contractEndDate,
    this.payType,
    this.isTravelTimePaid,
    this.isBreakTimePaid,
  });

  /// DTO -> Entity
  factory JobPostingDetailEntity.fromDto(JobPostingDetailDto dto) {
    final JobPostingDetailDto(
      :id,
      :company,
      :views,
      :title,
      :content,
      :isTimeUndecided,
      :payAmount,
      :workAddress,
      :participants,
      :hasTravelTime,
      :hasBreakTime,
      :isMealProvided,
      :preferredQualifications,
      :workStartTime,
      :workEndTime,
      :specialtyField,
      :contractType,
      :contractStartDate,
      :contractEndDate,
      :payType,
      :isTravelTimePaid,
      :isBreakTimePaid,
    ) = dto;

    return JobPostingDetailEntity(
      id: id,
      companyId: company.id,
      companyThumbnail: company.thumbnailUrl,
      companyName: company.name,
      views: views,
      title: title,
      content: content,
      isTBC: isTimeUndecided,
      payAmount: payAmount.toString(),
      workAddress: workAddress,
      participants: participants.toString(),
      hasTravelTime: hasTravelTime,
      hasBreakTime: hasBreakTime,
      isMealProvided: isMealProvided,
      workStartTime: workStartTime,
      workEndTime: workEndTime,
      preferredQualifications: preferredQualifications ?? '',
      categoryType: specialtyField,
      contractType: contractType,
      contractStartDate: contractStartDate,
      contractEndDate: contractEndDate,
      payType: payType,
      isTravelTimePaid: isTravelTimePaid,
      isBreakTimePaid: isBreakTimePaid,
    );
  }
}

extension JobPostingDetailEntityExt on JobPostingDetailEntity {
  /// 계약 기간
  String get contractPeriod => _getContractPeriod();

  String _getContractPeriod() {
    const format = 'yy / MM / dd';
    switch (contractType) {
      case ContractType.short:
        return contractStartDate?.format(format) ?? '';
      case ContractType.long:
        final startDate = contractStartDate?.format(format) ?? '';
        final endDate = contractStartDate?.format(format) ?? '';
        return '$startDate - $endDate';
      default:
        return '';
    }
  }

  /// 근무 시간
  String get workHours => _getWorkHours();

  String _getWorkHours() {
    if (isTBC) {
      return StringRes.tbc.tr;
    }

    const format = 'hh:mm';
    final startTime = workStartTime?.format(format) ?? '';
    final endTime = workEndTime?.format(format) ?? '';

    return '$startTime - $endTime';
  }
}
