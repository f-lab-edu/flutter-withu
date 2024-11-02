part of 'login_bloc.dart';

extension LoginBlocConverter on LoginBloc {
  LoginRequestEntity toEntity() {
    return LoginRequestEntity(
      accountType: state.selectedTab,
      loginType: LoginType.email,
      loginId: state.loginId,
      password: state.password,
    );
  }
}
