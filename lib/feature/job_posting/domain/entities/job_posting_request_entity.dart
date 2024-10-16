import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';

/// 공고 등록/수정 요청 엔티티
class JobPostingRequestEntity {
  /// 회사 ID
  final String companyId;

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

  JobPostingRequestEntity({
    required this.companyId,
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
}

extension JobPostingRequestEntityExt on JobPostingRequestEntity {
  /// DTO로 변경
  JobPostingRequestDto? toDto() {
    final categoryType = this.categoryType;
    final contractType = this.contractType;
    final startDate = contractStartDate;
    final endDate = contractEndDate;
    final payType = this.payType;
    final payAmount = int.tryParse(this.payAmount);
    final participants = int.tryParse(this.participants);
    final isTravelTimePaid = this.isTravelTimePaid;
    final isBreakTimePaid = this.isBreakTimePaid;

    if (categoryType == null ||
        contractType == null ||
        startDate == null ||
        endDate == null ||
        payType == null ||
        payAmount == null ||
        participants == null ||
        isTravelTimePaid == null ||
        isBreakTimePaid == null) {
      return null;
    }
    // TODO: companyId, isUrgent 추가 예정.
    return JobPostingRequestDto(
      companyId: '1',
      title: title,
      content: content,
      specialtyField: categoryType.serverKey,
      contractType: contractType.serverKey,
      contractStartDate: startDate,
      contractEndDate: endDate,
      isTimeUndecided: isTBC,
      payType: payType.serverKey,
      payAmount: payAmount,
      workAddress: workAddress,
      participants: participants,
      hasTravelTime: hasTravelTime,
      isTravelTimePaid: isTravelTimePaid,
      hasBreakTime: hasBreakTime,
      isBreakTimePaid: isBreakTimePaid,
      isMealProvided: isMealProvided,
      preferredQualifications: preferredQualifications,
      workStartTime: workStartTime,
      workEndTime: workEndTime,
      isUrgent: false,
    );
  }
}
