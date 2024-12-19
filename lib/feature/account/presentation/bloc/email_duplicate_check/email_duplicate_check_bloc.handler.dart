part of 'email_duplicate_check_bloc.dart';

extension EmailDuplicateCheckBlocHandler on EmailDuplicateCheckBloc {
  void _onEmailInputted(
    EmailDuplicateCheckInputted event,
    Emitter<EmailDuplicateCheckState> emit,
  ) async {
    emit(state.copyWith(email: event.email));

    /// 이메일 형식이 옳다면 API 호출하기
    if (event.email.isValid) {
      await _checkDuplicate(emit, event.value);
    }
  }

  /// 이메일 중복 검사
  Future _checkDuplicate(
    Emitter<EmailDuplicateCheckState> emit,
    String email,
  ) async {
    final result = await useCase.exec(email: email);

    emit(state.copyWith(
      errorText: result,
      errorVisible: VisibleTypeExt.fromBool(result.isNotEmpty),
    ));
  }
}
