part of 'job_posting_request_entity.dart';

/// 공고 등록/수정 폼 유효성 검사
extension JobPostingRequestEntityValidator on JobPostingRequestEntity {
  /// 모집인원 입력 검사
  bool get isValidParticipants => payAmount > 0;

  /// 급여 입력 검사
  bool get isValidPayAmount => payAmount > 0;

  /// 이동시간(급여여부) 선택 검사
  bool get isInValidTravelTimePaid => isTravelTimePaid == null && hasTravelTime;

  /// 휴게시간(급여여부) 선택 검사
  bool get isInValidBreakTimePaid => isBreakTimePaid == null && hasBreakTime;

  /// 입력 데이터 유효성 검사.
  ValidationResult checkValidation() {
    if (title.isEmpty) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.title.tr,
      );
    }

    if (content.isEmpty) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.content.tr,
      );
    }

    if (categoryType.isNone) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.category.tr,
      );
    }

    if (contractType.isNone) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.contractType.tr,
      );
    }

    if (!isTBC && workStartTime == null) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.workStartTime.tr,
      );
    }

    if (!isTBC && workEndTime == null) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.workEndTime.tr,
      );
    }

    if (!isValidParticipants) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.participants.tr,
      );
    }

    if (payType.isNone) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.payType.tr,
      );
    }

    if (!isValidPayAmount) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.payAmount.tr,
      );
    }

    if (workAddress.isEmpty) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.address.tr,
      );
    }

    if (preferredQualifications.isEmpty) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.preferredQualification.tr,
      );
    }

    if (isInValidTravelTimePaid) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.travelTimePaid.tr,
      );
    }

    if (isInValidBreakTimePaid) {
      return ValidationResult.fail(
        message: JobPostingValidationMessage.breakTimePaid.tr,
      );
    }

    return ValidationResult.success();
  }
}
