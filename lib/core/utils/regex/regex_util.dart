class RegExUtil {
  /// 이메일 패턴
  static RegExp emailPattern = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$",
  );

  /// 패스워드
  static RegExp passwordPattern = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$',
  );

  /// 휴대폰번호 11자리
  static RegExp phonePattern = RegExp(
    r'^(010|011|016|017|018|019)\d{3,4}\d{4}$',
  );
}
