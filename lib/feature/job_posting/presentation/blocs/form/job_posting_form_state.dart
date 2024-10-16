part of 'job_posting_form_bloc.dart';

enum JobPostingFormStatus { initial, loading, success, failure }

class JobPostingFormState extends Equatable {
  /// 상태값
  final JobPostingFormStatus status;

  /// 공고 제목
  final String title;

  /// 근로 내용
  final String content;

  /// 카테고리
  final JobCategoryType? category;

  /// 기간 형식
  final PeriodType? period;

  /// 계약 시작 날짜
  final DateTime? contractStartDate;

  String get contractStartDateStr =>
      contractStartDate?.format('yyyy-MM-dd') ?? '';

  /// 계약 시작 달력 노출 여부
  final bool isVisibleStartCalendar;

  /// 계약 종료 날짜
  final DateTime? contractEndDate;

  String get contractEndDateStr => contractEndDate?.format('yyyy-MM-dd') ?? '';

  /// 계약 종료 달력 노출 여부
  final bool isVisibleEndCalendar;

  /// 미정 여부.
  final bool isTBC;

  /// 근무 시작 시간
  final DateTime? workStartTime;

  /// 근무 종료 시간
  final DateTime? workEndTime;

  /// 모집인원
  final String participants;

  /// 급여 타입
  final PayType? payType;

  /// 급여
  final String pay;

  /// 주소
  final String address;

  /// 우대사항
  final String preferredQualifications;

  /// 이동시간 유무
  final bool hasTravelTime;

  /// 이동시간 급여/비급여 여부
  final bool? isTravelTimePaid;

  /// 휴게시간 유무
  final bool hasBreakTime;

  /// 휴게시간 급여/비급여 여부
  final bool? isBreakTimePaid;

  /// 식비 유무
  final bool hasMealPaid;

  const JobPostingFormState({
    required this.status,
    required this.title,
    required this.content,
    required this.isVisibleStartCalendar,
    required this.isVisibleEndCalendar,
    required this.isTBC,
    required this.participants,
    required this.pay,
    required this.address,
    this.category,
    this.period,
    this.contractStartDate,
    this.contractEndDate,
    this.workStartTime,
    this.workEndTime,
    this.payType,
    this.preferredQualifications = '',
    this.hasTravelTime = false,
    this.isTravelTimePaid,
    this.hasBreakTime = false,
    this.isBreakTimePaid,
    this.hasMealPaid = false,
  });

  JobPostingFormState copyWith({
    JobPostingFormStatus? status,
    String? title,
    String? content,
    JobCategoryType? category,
    PeriodType? period,
    DateTime? contractStartDate,
    DateTime? contractEndDate,
    bool? isVisibleStartCalendar,
    bool? isVisibleEndCalendar,
    bool? isTBC,
    DateTime? workStartTime,
    DateTime? workEndTime,
    String? participants,
    PayType? payType,
    String? pay,
    String? address,
    String? preferredQualifications,
    bool? hasTravelTime,
    bool? isTravelTimePaid,
    bool? hasBreakTime,
    bool? isBreakTimePaid,
    bool? hasMealPaid,
  }) {
    return JobPostingFormState(
      status: status ?? this.status,
      title: title ?? this.title,
      content: content ?? this.content,
      category: category ?? this.category,
      period: period ?? this.period,
      contractStartDate: contractStartDate ?? this.contractStartDate,
      contractEndDate: contractEndDate ?? this.contractEndDate,
      isVisibleStartCalendar:
          isVisibleStartCalendar ?? this.isVisibleStartCalendar,
      isVisibleEndCalendar: isVisibleEndCalendar ?? this.isVisibleEndCalendar,
      isTBC: isTBC ?? this.isTBC,
      workStartTime: workStartTime ?? this.workStartTime,
      workEndTime: workEndTime ?? this.workEndTime,
      participants: participants ?? this.participants,
      payType: payType ?? this.payType,
      pay: pay ?? this.pay,
      address: address ?? this.address,
      preferredQualifications:
          preferredQualifications ?? this.preferredQualifications,
      hasTravelTime: hasTravelTime ?? this.hasTravelTime,
      isTravelTimePaid: isTravelTimePaid ?? this.isTravelTimePaid,
      hasBreakTime: hasBreakTime ?? this.hasBreakTime,
      isBreakTimePaid: isBreakTimePaid ?? this.isBreakTimePaid,
      hasMealPaid: hasMealPaid ?? this.hasMealPaid,
    );
  }

  @override
  List<Object?> get props => [
        status,
        title,
        content,
        category,
        period,
        contractStartDate,
        contractEndDate,
        isVisibleStartCalendar,
        isVisibleEndCalendar,
        isTBC,
        workStartTime,
        workEndTime,
        participants,
        payType,
        pay,
        address,
        preferredQualifications,
        hasTravelTime,
        isTravelTimePaid,
        hasBreakTime,
        isBreakTimePaid,
        hasMealPaid,
      ];
}
