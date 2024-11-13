part of 'phone_verification_bloc.dart';

extension PhoneVerificationBlocHandler on PhoneVerificationBloc {
  void _onPhoneInputted(
    PhoneVerificationPhoneInputted event,
    Emitter<PhoneVerificationState> emit,
  ) {
    emit(state.copyWith(
      phone: event.phone,
    ));
  }

  void _onAuthCodeRequested(
    PhoneVerificationAuthCodeRequested event,
    Emitter<PhoneVerificationState> emit,
  ) {
    // TODO: API 호출하기
  }

  void _onAuthCodeInputted(
    PhoneVerificationAuthCodeInputted event,
    Emitter<PhoneVerificationState> emit,
  ) {
    emit(state.copyWith(
      authCode: event.code,
    ));
  }
}
