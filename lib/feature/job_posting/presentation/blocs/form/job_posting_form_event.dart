part of 'job_posting_form_bloc.dart';

sealed class JobPostingFormEvent extends Equatable {}

/// 공고 제목 입력 이벤트
class OnChangedTitle extends JobPostingFormEvent {
  final String title;

  OnChangedTitle({required this.title});

  @override
  List<Object?> get props => [title];
}

/// 근로 내용 입력
class OnChangedContent extends JobPostingFormEvent {
  final String content;

  OnChangedContent({required this.content});

  @override
  List<Object?> get props => [content];
}

/// 카테고리 선택 이벤트
class OnPressedJobCategory extends JobPostingFormEvent {
  final JobCategoryType category;

  OnPressedJobCategory({required this.category});

  @override
  List<Object?> get props => [category];
}

/// 기간형식 선택 이벤트
class OnPressedContractType extends JobPostingFormEvent {
  final ContractType contractType;

  OnPressedContractType({required this.contractType});

  @override
  List<Object?> get props => [contractType];
}

/// 계약 시작 날짜 변경 이벤트
class OnChangedContractStartDate extends JobPostingFormEvent {
  final DateTime contractStartDate;

  OnChangedContractStartDate({required this.contractStartDate});

  @override
  List<Object?> get props => [contractStartDate];
}

/// 계약 종료 날짜 변경 이벤트
class OnChangedContractEndDate extends JobPostingFormEvent {
  final DateTime contractEndDate;

  OnChangedContractEndDate({required this.contractEndDate});

  @override
  List<Object?> get props => [contractEndDate];
}

/// 계약 시작 날짜 노출 토글 이벤트
class OnToggleStartCalendarVisible extends JobPostingFormEvent {
  OnToggleStartCalendarVisible();

  @override
  List<Object?> get props => [];
}

/// 계약 종료 달력 노출 토글 이벤트
class OnToggleEndCalendarVisible extends JobPostingFormEvent {
  OnToggleEndCalendarVisible();

  @override
  List<Object?> get props => [];
}

/// 미정 스위치 토글 이벤트
class OnToggleTBC extends JobPostingFormEvent {
  OnToggleTBC();

  @override
  List<Object?> get props => [];
}

/// 근무 시작 날짜 변경 이벤트
class OnChangedWorkStartTime extends JobPostingFormEvent {
  final DateTime time;

  OnChangedWorkStartTime({required this.time});

  @override
  List<Object?> get props => [time];
}

/// 근무 종료 날짜  변경 이벤트
class OnChangedWorkEndTime extends JobPostingFormEvent {
  final DateTime time;

  OnChangedWorkEndTime({required this.time});

  @override
  List<Object?> get props => [time];
}

/// 모집인원 입력 이벤트
class OnChangedParticipants extends JobPostingFormEvent {
  final String participants;

  OnChangedParticipants({required this.participants});

  @override
  List<Object?> get props => [participants];
}

/// 급여 타입 선택 이벤트.
class OnSelectedPayType extends JobPostingFormEvent {
  final PayType payType;

  OnSelectedPayType({required this.payType});

  @override
  List<Object?> get props => [payType];
}

/// 급여 입력 이벤트
class OnChangedPay extends JobPostingFormEvent {
  final String pay;

  OnChangedPay({required this.pay});

  @override
  List<Object?> get props => [pay];
}

/// 주소 찾기 클릭 이벤트
class OnPressedFindAddress extends JobPostingFormEvent {
  OnPressedFindAddress();

  @override
  List<Object?> get props => [];
}

/// 주소 찾기 클릭 이벤트
class OnChangedPreferredQualifications extends JobPostingFormEvent {
  final String text;

  OnChangedPreferredQualifications({required this.text});

  @override
  List<Object?> get props => [text];
}

/// 이동시간 유무 토글 이벤트.
class OnToggleHasTravelTime extends JobPostingFormEvent {
  OnToggleHasTravelTime();

  @override
  List<Object?> get props => [];
}

/// 이동시간 급여/비급여 토글 이벤트.
class OnSelectTravelTimePaid extends JobPostingFormEvent {
  final bool isPaid;

  OnSelectTravelTimePaid({required this.isPaid});

  @override
  List<Object?> get props => [isPaid];
}

/// 휴게시 유무 토글 이벤트.
class OnToggleHasBreakTime extends JobPostingFormEvent {
  OnToggleHasBreakTime();

  @override
  List<Object?> get props => [];
}

/// 휴게시간 급여/비급여 토글 이벤트.
class OnSelectBreakTimePaid extends JobPostingFormEvent {
  final bool isPaid;

  OnSelectBreakTimePaid({required this.isPaid});

  @override
  List<Object?> get props => [isPaid];
}

/// 휴게시 유무 토글 이벤트.
class OnToggleHasMealPaid extends JobPostingFormEvent {
  OnToggleHasMealPaid();

  @override
  List<Object?> get props => [];
}

/// 등록하기 버튼 클릭
class JobPostingFormSubmitted extends JobPostingFormEvent {
  JobPostingFormSubmitted();

  @override
  List<Object?> get props => [];
}

/// 공고 Id 저장
class JobPostingFormIdSet extends JobPostingFormEvent {
  final String? id;

  JobPostingFormIdSet({required this.id});

  @override
  List<Object?> get props => [id];
}

/// 상세 조회 이벤트
class JobPostingFormDetailFetched extends JobPostingFormEvent {
  @override
  List<Object?> get props => [];
}
