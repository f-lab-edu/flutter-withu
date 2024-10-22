part of 'job_posting_form_bloc.dart';

enum JobPostingFormStatus { initial, loading, success }

extension JobPostingFormStatusExt on JobPostingFormStatus {
  bool get isSuccess => this == JobPostingFormStatus.success;

  bool get isLoading => this == JobPostingFormStatus.loading;
}

// TODO: 내용이 길면 Sub File 로 분리.
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
  final ContractType? contractType;

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
  final bool isMealProvided;

  const JobPostingFormState({
    required this.status,
    this.title = '',
    this.content = '',
    this.category,
    this.contractType,
    this.contractStartDate,
    this.isVisibleStartCalendar = false,
    this.contractEndDate,
    this.isVisibleEndCalendar = false,
    this.isTBC = true,
    this.workStartTime,
    this.workEndTime,
    this.participants = '',
    this.payType,
    this.pay = '',
    this.address = '',
    this.preferredQualifications = '',
    this.hasTravelTime = false,
    this.isTravelTimePaid,
    this.hasBreakTime = false,
    this.isBreakTimePaid,
    this.isMealProvided = false,
  });

  JobPostingFormState copyWith({
    JobPostingFormStatus? status,
    String? title,
    String? content,
    JobCategoryType? category,
    ContractType? contractType,
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
    bool? isMealProvided,
  }) {
    return JobPostingFormState(
      status: status ?? this.status,
      title: title ?? this.title,
      content: content ?? this.content,
      category: category ?? this.category,
      contractType: contractType ?? this.contractType,
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
      isMealProvided: isMealProvided ?? this.isMealProvided,
    );
  }

  @override
  List<Object?> get props => [
        status,
        title,
        content,
        category,
        contractType,
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
        isMealProvided,
      ];
}

extension JobPostingFormStateExt on JobPostingFormState {
  /// 등록/수정 요청 Entity로 변경
  JobPostingRequestEntity toEntity() {
    // TODO: companyId 추후 추가 예정
    return JobPostingRequestEntity(
      companyId: '1',
      title: title,
      content: content,
      categoryType: category,
      contractType: contractType,
      contractStartDate: contractStartDate,
      contractEndDate: contractEndDate,
      isTBC: isTBC,
      payType: payType,
      payAmount: pay,
      workAddress: address,
      participants: participants,
      hasTravelTime: hasTravelTime,
      isTravelTimePaid: isTravelTimePaid,
      hasBreakTime: hasBreakTime,
      isBreakTimePaid: isBreakTimePaid,
      isMealProvided: isMealProvided,
      preferredQualifications: preferredQualifications,
      workStartTime: workStartTime,
      workEndTime: workEndTime,
    );
  }
}
