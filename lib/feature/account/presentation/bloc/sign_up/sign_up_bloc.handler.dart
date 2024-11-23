part of 'sign_up_bloc.dart';

extension SignUpBlocHandler on SignUpBloc {
  void _onNameInputted(
    SignUpNameInputted event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(name: event.name));
  }

  void _onBirthDateInputted(
    SignUpBirthDateInputted event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(birthDate: event.birthDate));
  }

  void _onGenderSelected(
    SignUpGenderSelected event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(gender: event.gender));
  }

  void _onPasswordObscureToggled(
    SignUpPasswordObscureToggled event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(isPasswordObscure: !state.isPasswordObscure));
  }

  void _onPasswordInputted(
    SignUpPasswordInputted event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(
      password: event.password,
    ));

    emit(state.copyWith(
      isPasswordErrorVisible: state.getPasswordErrorVisible(),
    ));
  }

  void _onPasswordVerifyInputted(
    SignUpPasswordVerifyInputted event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(
      passwordVerify: event.password,
    ));

    emit(state.copyWith(
      isPasswordErrorVisible: state.getPasswordErrorVisible(),
    ));
  }

  void _onSubmitPressed(
    SignUpSubmitPressed event,
    Emitter<SignUpState> emit,
  ) {}
}
