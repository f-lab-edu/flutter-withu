part of 'phone_auth_bloc.dart';

extension PhoneAuthBlocHandler on PhoneAuthBloc {
  void _onPhoneInputted(
    PhoneAuthPhoneInputted event,
    Emitter<PhoneAuthState> emit,
  ) {
    emit(state.copyWith(
      phone: event.phone,
    ));
  }

  void _onAuthNumRequested(
    PhoneAuthAuthNumRequested event,
    Emitter<PhoneAuthState> emit,
  ) {
    // TODO: API 호출하기
  }

  void _onAuthNumInputted(
    PhoneAuthAuthNumInputted event,
    Emitter<PhoneAuthState> emit,
  ) {
    emit(state.copyWith(
      phoneAuth: event.phoneAuth,
    ));
  }
}
