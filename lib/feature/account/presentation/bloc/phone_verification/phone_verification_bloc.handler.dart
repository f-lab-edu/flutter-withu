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
  ) async {
    await accountUseCase.requestPhoneVerification(
      phone: state.phone.value,
    );
  }

  void _onAuthCodeInputted(
    PhoneVerificationAuthCodeInputted event,
    Emitter<PhoneVerificationState> emit,
  ) async {
    emit(state.copyWith(
      authCode: event.code,
    ));

    if (state.canAuthCodeVerification) {
      emit(state.copyWith(
        authCodeErrorVisible: await requestAuthCodeVerification(),
      ));
    }
  }

  /// 인증번호 6자리일 때 인증 요청
  Future<VisibleType> requestAuthCodeVerification() async {
    final result = await accountUseCase.authCodeVerification(
      entity: toEntity(),
    );

    return VisibleTypeExt.fromBool(!result);
  }
}
