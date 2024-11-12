part of 'login_bloc.dart';

@freezed
class LoginState extends BaseBlocState with _$LoginState {
  factory LoginState({
    /// 상태.
    required BaseBlocStatus status,

    /// 다이얼로그 메시지
    @Default('') String message,

    /// loginId - email 형식
    @Default(Email.empty) Email loginId,

    /// password
    @Default(Password.empty) Password password,

    /// password Visible 여부
    @Default(false) bool isVisiblePassword,

    /// 로그인 버튼 enabled
    @Default(false) bool isEnabledLogin,

    /// 선택된 탭
    @Default(AccountType.company) AccountType selectedTab,
  }) = _LoginState;
}

extension LoginStateExt on LoginState {
  /// 로그인 버튼 enabled 검사
  bool checkLoginEnabled() {
    return loginId.isValid && password.isValid;
  }

  /// 메시지가 있는지 검사.
  bool get hasFailMessage => status.isFailure && message.isNotEmpty;
}
