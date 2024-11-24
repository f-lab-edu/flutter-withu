part of 'phone_auth_bloc.dart';

extension PhoneAuthBlocHandler on PhoneAuthBloc {
  PhoneAuthState _setLoading() {
    return state.copyWith(
      status: BaseBlocStatus.loading(),
    );
  }
  /// 휴대폰 번호 입력 이벤트.
  void _onPhoneInputted(
    PhoneAuthPhoneInputted event,
    Emitter<PhoneAuthState> emit,
  ) {
    emit(state.copyWith(
      phone: event.phone,
    ));
  }

  /// 인증번호 발송 요청 이벤트.
  void _onAuthCodeRequested(
    PhoneAuthAuthCodeSent event,
    Emitter<PhoneAuthState> emit,
  ) async {
    emit(_setLoading());

    await phoneAuthUseCase.sendAuthCode(
      phone: state.phone.value,
    );

    emit(state.copyWith(
      status: BaseBlocStatus.initial(),
    ));
  }

  /// 인증번호 입력 이벤트.
  void _onAuthCodeInputted(
    PhoneAuthAuthCodeInputted event,
    Emitter<PhoneAuthState> emit,
  ) async {
    emit(state.copyWith(
      authCode: event.code,
    ));

    if (state.canAuthCodeVerification) {
      emit(_setLoading());

      emit(state.copyWith(
        status: BaseBlocStatus.initial(),
        authCodeErrorVisible: await requestAuthCodeVerification(),
      ));
    }
  }

  /// 인증번호 6자리일 때 인증 요청
  Future<VisibleType> requestAuthCodeVerification() async {
    final result = await phoneAuthUseCase.authCodeVerification(
      entity: toEntity(),
    );

    return VisibleTypeExt.fromBool(!result);
  }
}
