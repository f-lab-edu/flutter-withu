part of 'email_duplicate_check_bloc.dart';

extension EmailDuplicateCheckBlocHandler on EmailDuplicateCheckBloc {
  void _onEmailInputted(
    EmailDuplicateCheckInputted event,
    Emitter<EmailDuplicateCheckState> emit,
  ) async {
    emit(state.copyWith(email: event.email));

    /// 이메일 형식이 옳다면 API 호출하기
    if (event.email.isValid) {
      emit(state.copyWith(
        errorVisible: await _checkDuplicate(event.value),
      ));
    }
  }

  /// 이메일 중복 검사
  Future<VisibleType> _checkDuplicate(String email) async {
    final isDuplicate = await useCase.exec(email: email);
    return VisibleTypeExt.fromBool(isDuplicate);
  }
}
