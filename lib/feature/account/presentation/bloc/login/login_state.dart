part of 'login_bloc.dart';

@freezed
class LoginState extends BaseBlocState with _$LoginState {
  factory LoginState({
    /// 상태.
    required BaseBlocStatus status,

    /// 다이얼로그 메시지
    @Default('') String message,

    /// loginId - email 형식
    @Default('') String loginId,

    /// loginId Valid 여부
    @Default(true) bool isValidId,

    /// password
    @Default('') String password,

    /// password Valid 여부
    @Default(true) bool isValidPassword,

    /// password Visible 여부
    @Default(false) bool isVisiblePassword,

    /// 로그인 버튼 enabled
    @Default(false) bool isEnabledLogin,

    /// 선택된 탭
    @Default(AccountType.company) AccountType selectedTab,
  }) = _LoginState;
}

extension LoginStateExt on LoginState {
  /// Id 유효성 검사
  bool checkIdValid(String id) {
    return RegExUtil.emailPattern.hasMatch(id);
  }

  /// pw 유효성 검사
  bool checkPwValid(String pw) {
    return RegExUtil.passwordPattern.hasMatch(pw);
  }

  /// 로그인 버튼 enabled 검사
  bool checkLoginEnabled({
    String id = '',
    String pw = '',
  }) {
    return checkIdValid(id.isEmpty ? loginId : id) &&
        checkPwValid(pw.isEmpty ? password : pw);
  }
}
