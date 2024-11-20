part of 'login_bloc.dart';

extension LoginBlocHandler on LoginBloc {
  /// 아이디 입력
  void _onIdInputted(
    LoginIdInputted event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(
      loginId: event.loginId,
      isEnabledLogin: state.checkLoginEnabled(loginId: event.loginId),
    ));
  }

  /// 비밀번호 입력
  void _onPasswordInputted(
    LoginPasswordInputted event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(
      password: event.password,
      isEnabledLogin: state.checkLoginEnabled(password: event.password),
    ));
  }

  /// 로그인 버튼 클릭
  void _onBtnPressed(
    LoginBtnPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: BaseBlocStatus.loading()));

    final LoginResultEntity result = await accountUseCase.login(
      accountType: state.selectedTab,
      loginType: LoginType.email,
      loginId: state.loginId.value,
      password: state.password.value,
    );

    emit(state.copyWith(
      status: result.blocStatus,
      message: result.message,
    ));
  }

  /// 탭 클릭
  void _onTabPressed(
    LoginTabPressed event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(
      selectedTab: event.type,
    ));
  }
}
