part of 'find_id_bloc.dart';

extension FindIdBlocHandler on FindIdBloc {
  void _onIsAuthChanged(
    FindIdIsAuthChanged event,
    Emitter<FindIdState> emit,
  ) {
    emit(state.copyWith(
      isAuth: event.value,
    ));
  }
}
