part of 'phone_verification_bloc.dart';

extension PhoneVerificationBlocHandler on PhoneVerificationBloc {
  /// 휴대폰 번호 입력 이벤트.
  void _onPhoneInputted(
    PhoneVerificationPhoneInputted event,
    Emitter<PhoneVerificationState> emit,
  ) {
    emit(state.copyWith(
      phone: event.phone,
    ));
  }

  /// 인증번호 발송 요청 이벤트.
  void _onAuthCodeRequested(
    PhoneVerificationAuthCodeRequested event,
    Emitter<PhoneVerificationState> emit,
  ) async {
    await accountUseCase.sendAuthCode(
      phone: state.phone.value,
    );
  }

  /// 인증번호 입력 이벤트.
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
