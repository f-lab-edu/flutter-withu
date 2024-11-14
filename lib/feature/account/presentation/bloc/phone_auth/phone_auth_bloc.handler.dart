part of 'phone_auth_bloc.dart';

extension PhoneAuthBlocHandler on PhoneAuthBloc {
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
    PhoneAuthAuthCodeRequested event,
    Emitter<PhoneAuthState> emit,
  ) async {
    await accountUseCase.sendAuthCode(
      phone: state.phone.value,
    );
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
