part of 'job_posting_form_bloc.dart';

enum JobPostingFormStatus { initial, loading, loaded, success, fail }

extension JobPostingFormStatusExt on JobPostingFormStatus {
  bool get isSuccess => this == JobPostingFormStatus.success;

  bool get isLoading => this == JobPostingFormStatus.loading;
}

@freezed
class JobPostingFormState with _$JobPostingFormState {
  factory JobPostingFormState({
    required JobPostingFormStatus status,
    required DateTime contractStartDate,
    required DateTime contractEndDate,
    @Default('') String title,
    @Default('') String content,
    @Default(false) bool isVisibleStartCalendar,
    @Default(false) bool isVisibleEndCalendar,
    @Default(true) bool isTBC,
    @Default('') String participants,
    @Default('') String pay,
    @Default('') String address,
    @Default('') String preferredQualifications,
    @Default(false) bool hasTravelTime,
    @Default(false) bool hasBreakTime,
    @Default(false) bool isMealProvided,
    @Default(JobCategoryType.none ) JobCategoryType category,
    @Default(ContractType.none) ContractType contractType,
    @Default(PayType.none) PayType payType,
    String? jobPostingId,
    DateTime? workStartTime,
    DateTime? workEndTime,
    bool? isTravelTimePaid,
    bool? isBreakTimePaid,
    String? message,
  }) = _JobPostingFormState;

}
