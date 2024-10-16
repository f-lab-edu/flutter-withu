import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/shared/shared.dart';

part 'job_posting_form_state.dart';

part 'job_posting_form_event.dart';

class JobPostingFormBloc
    extends Bloc<JobPostingFormEvent, JobPostingFormState> {
  final JobPostingUseCase useCase;

  JobPostingFormBloc({
    required this.useCase,
  }) : super(const JobPostingFormState(status: JobPostingFormStatus.initial)) {
    on<OnChangedTitle>(_onChangedTitle);
    on<OnChangedContent>(_onChangedContent);
    on<OnPressedJobCategory>(_onPressedJobCategory);
    on<OnPressedContractType>(_onPressedContractType);
    on<OnChangedContractStartDate>(_onChangedContractStartDate);
    on<OnChangedContractEndDate>(_onChangedContractEndDate);
    on<OnToggleStartCalendarVisible>(_onToggleStartCalendarVisible);
    on<OnToggleEndCalendarVisible>(_onToggleEndCalendarVisible);
    on<OnToggleTBC>(_onToggleTBC);
    on<OnChangedWorkStartTime>(_onChangedWorkStartTime);
    on<OnChangedWorkEndTime>(_onChangedWorkEndTime);
    on<OnChangedParticipants>(_onChangedParticipants);
    on<OnSelectedPayType>(_onSelectedPayType);
    on<OnChangedPay>(_onChangedPay);
    on<OnPressedFindAddress>(_onPressedFindAddress);
    on<OnChangedPreferredQualifications>(_onChangedPreferredQualifications);
    on<OnToggleHasTravelTime>(_onToggleHasTravelTime);
    on<OnSelectTravelTimePaid>(_onSelectTravelTimePaid);
    on<OnToggleHasBreakTime>(_onToggleHasBreakTime);
    on<OnSelectBreakTimePaid>(_onSelectBreakTimePaid);
    on<OnToggleHasMealPaid>(_onToggleHasMealPaid);
    on<OnPressedSubmit>(_onPressedSubmit);
  }

  /// 공고 제목 변경 이벤트.
  void _onChangedTitle(
    OnChangedTitle event,
    Emitter<JobPostingFormState> emit,
  ) async {
    emit(state.copyWith(title: event.title));
  }

  /// 근로 내용 변경 이벤트.
  void _onChangedContent(
    OnChangedContent event,
    Emitter<JobPostingFormState> emit,
  ) async {
    emit(state.copyWith(content: event.content));
  }

  /// 카테고리 선택 이벤트.
  void _onPressedJobCategory(
    OnPressedJobCategory event,
    Emitter<JobPostingFormState> emit,
  ) async {
    emit(state.copyWith(category: event.category));
  }

  /// 기간형식 선택 이벤트.
  void _onPressedContractType(
    OnPressedContractType event,
    Emitter<JobPostingFormState> emit,
  ) async {
    emit(state.copyWith(contractType: event.contractType));
  }

  /// 계약 시작 날짜.
  void _onChangedContractStartDate(
    OnChangedContractStartDate event,
    Emitter<JobPostingFormState> emit,
  ) async {
    emit(state.copyWith(contractStartDate: event.contractStartDate));
  }

  /// 계약 종료 날짜.
  void _onChangedContractEndDate(
    OnChangedContractEndDate event,
    Emitter<JobPostingFormState> emit,
  ) async {
    emit(state.copyWith(contractEndDate: event.contractEndDate));
  }

  /// 계약 시작 날짜 노출 토글 이벤트
  void _onToggleStartCalendarVisible(
    OnToggleStartCalendarVisible event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(isVisibleStartCalendar: !state.isVisibleStartCalendar));
  }

  /// 계약 종료 달력 노출 토글 이벤트
  void _onToggleEndCalendarVisible(
    OnToggleEndCalendarVisible event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(isVisibleEndCalendar: !state.isVisibleEndCalendar));
  }

  /// 미정 토글 이벤트.
  void _onToggleTBC(
    OnToggleTBC event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(isTBC: !state.isTBC));
  }

  /// 근무 시작 날짜 변경 이벤트.
  void _onChangedWorkStartTime(
    OnChangedWorkStartTime event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(workStartTime: event.time));
  }

  /// 근무 종료 날짜 변경 이벤트.
  void _onChangedWorkEndTime(
    OnChangedWorkEndTime event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(workEndTime: event.time));
  }

  /// 모집인원 입력 이벤트.
  void _onChangedParticipants(
    OnChangedParticipants event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(participants: event.participants));
  }

  /// 급여방법 선택 이벤트.
  void _onSelectedPayType(
    OnSelectedPayType event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(payType: event.payType));
  }

  /// 급여방법 입력 이벤트.
  void _onChangedPay(
    OnChangedPay event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(pay: event.pay));
  }

  /// 주소찾기 클릭 이벤트.
  void _onPressedFindAddress(
    OnPressedFindAddress event,
    Emitter<JobPostingFormState> emit,
  ) {
    // TODO: 주소찾기 화면으로 연결하기
    emit(state.copyWith(address: '서울 동작구 여의대방로22바길 2 2층'));
  }

  /// 우대사항 입력 이벤트.
  void _onChangedPreferredQualifications(
    OnChangedPreferredQualifications event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(preferredQualifications: event.text));
  }

  /// 이동시간 유무 토글 이벤트.
  void _onToggleHasTravelTime(
    OnToggleHasTravelTime event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(hasTravelTime: !state.hasTravelTime));
  }

  /// 이동시간 급여/비급여 선택 이벤트.
  void _onSelectTravelTimePaid(
    OnSelectTravelTimePaid event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(isTravelTimePaid: event.isPaid));
  }

  /// 휴게시간 유무 토글 이벤트.
  void _onToggleHasBreakTime(
    OnToggleHasBreakTime event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(hasBreakTime: !state.hasBreakTime));
  }

  /// 휴게시간 급여/비급여 선택 이벤트.
  void _onSelectBreakTimePaid(
    OnSelectBreakTimePaid event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(isBreakTimePaid: event.isPaid));
  }

  /// 식비 유무 토글 이벤트.
  void _onToggleHasMealPaid(
    OnToggleHasMealPaid event,
    Emitter<JobPostingFormState> emit,
  ) {
    emit(state.copyWith(isMealProvided: !state.isMealProvided));
  }

  /// 등록하기 클릭.
  void _onPressedSubmit(
    OnPressedSubmit event,
    Emitter<JobPostingFormState> emit,
  ) async {
    final loadingBloc = getIt<LoadingBloc>();
    try {
      loadingBloc.add(OnVisibleLoading());
      final result = await useCase.createJobPosting(state.toEntity());
      if (result) {
        emit(state.copyWith(status: JobPostingFormStatus.success));
      } else {
        logger.i('등록 실패');
      }
    } catch (e) {
      logger.e(e);
    } finally {
      loadingBloc.add(OnInVisibleLoading());
    }
  }
}