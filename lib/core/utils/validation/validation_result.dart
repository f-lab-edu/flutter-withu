/// 유효성 검사 결과
class ValidationResult {
  /// 유효성 여부
  final bool isValid;

  /// 유효성 검사 실패 메시지
  final String failMessage;

  ValidationResult({
    required this.isValid,
    this.failMessage = '',
  });

  /// 검사 성공
  factory ValidationResult.success() {
    return ValidationResult(isValid: true);
  }

  /// 검사 실패
  factory ValidationResult.fail({
    required String message,
  }) {
    return ValidationResult(
      isValid: false,
      failMessage: message,
    );
  }
}
