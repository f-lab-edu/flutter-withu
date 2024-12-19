part of 'find_id_bloc.dart';

extension FindIdBlocHandler on FindIdBloc {
  void _onAccountTypeStored(
    FindIdAccountTypeStored event,
    Emitter<FindIdState> emit,
  ) {
    emit(state.copyWith(
      accountType: event.accountType,
    ));
  }

  void _onIsAuthChanged(
    FindIdIsAuthChanged event,
    Emitter<FindIdState> emit,
  ) {
    emit(state.copyWith(
      isAuth: event.value,
    ));
  }

  void _onPressed(
    FindIdPressed event,
    Emitter<FindIdState> emit,
  ) async {
    emit(state.copyWith(status: BaseBlocStatus.loading()));

    final result = await findIdUseCase.exec(
      entity: FindIdRequestEntity(
        accountType: state.accountType,
        phone: event.phone.value,
        authCode: event.authCode.value,
      ),
    );

    if (result.status) {
      emit(state.copyWith(status: BaseBlocStatus.success()));
    } else {
      emit(state.copyWith(status: BaseBlocStatus.failure()));
    }
  }
}
