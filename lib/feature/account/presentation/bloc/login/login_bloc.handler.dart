part of 'login_bloc.dart';

extension LoginBlocHandler on LoginBloc {
  /// 아이디 입력
  void _onIdInputted(
    LoginIdInputted event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(
      loginId: event.id,
      isValidId: state.checkIdValid(event.id),
      isEnabledLogin: state.checkLoginEnabled(id: event.id),
    ));
  }

  /// 비밀번호 입력
  void _onPasswordInputted(
    LoginPasswordInputted event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(
      password: event.password,
      isValidPassword: state.checkPwValid(event.password),
      isEnabledLogin: state.checkLoginEnabled(pw: event.password),
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
      loginId: state.loginId,
      password: state.password,
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
