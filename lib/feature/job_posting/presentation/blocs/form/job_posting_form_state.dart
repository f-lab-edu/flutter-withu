part of 'job_posting_form_bloc.dart';

enum JobPostingFormStatus { initial, loading, success }

extension JobPostingFormStatusExt on JobPostingFormStatus {
  bool get isSuccess => this == JobPostingFormStatus.success;

  bool get isLoading => this == JobPostingFormStatus.loading;
}

@freezed
class JobPostingFormState with _$JobPostingFormState {
  factory JobPostingFormState({
    required JobPostingFormStatus status,
    required String title,
    required String content,
    required bool isVisibleStartCalendar,
    required bool isVisibleEndCalendar,
    required bool isTBC,
    required String participants,
    required String pay,
    required String address,
    required String preferredQualifications,
    required bool hasTravelTime,
    required bool hasBreakTime,
    required bool isMealProvided,
    JobCategoryType? category,
    ContractType? contractType,
    DateTime? contractStartDate,
    DateTime? contractEndDate,
    DateTime? workStartTime,
    DateTime? workEndTime,
    PayType? payType,
    bool? isTravelTimePaid,
    bool? isBreakTimePaid,
  }) = _JobPostingFormState;

}
