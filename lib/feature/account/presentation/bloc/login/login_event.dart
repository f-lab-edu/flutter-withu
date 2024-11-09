part of 'login_bloc.dart';

sealed class LoginEvent extends BaseBlocEvent {}

/// 아이디 입력 이벤트
class LoginIdInputted extends LoginEvent {
  final String id;

  LoginIdInputted({required this.id});
}

/// 비밀번호 입력 이벤트
class LoginPasswordInputted extends LoginEvent {
  final String password;

  LoginPasswordInputted({required this.password});
}

/// 로그인 버튼 클릭 이벤트
class LoginBtnPressed extends LoginEvent {
  LoginBtnPressed();
}

/// 탭 클릭 이벤트
class LoginTabPressed extends LoginEvent {
  final AccountType type;

  LoginTabPressed({required this.type});
}

/// 비밀번호 표시 토클 이벤트
class LoginVisiblePasswordToggled extends LoginEvent {
  LoginVisiblePasswordToggled();
}
