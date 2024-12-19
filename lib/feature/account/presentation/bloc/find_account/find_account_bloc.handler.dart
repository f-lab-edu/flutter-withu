part of 'find_account_bloc.dart';

extension FindAccountBlocHandler on FindAccountBloc {
  void _onLoadingSet(
    FindAccountLoadingSet event,
    Emitter<FindAccountState> emit,
  ) {
    emit(state.copyWith(
      status: BaseBlocStatus.loading(),
    ));
  }

  void _onLoadingUnSet(
    FindAccountLoadingUnSet event,
    Emitter<FindAccountState> emit,
  ) {
    emit(state.copyWith(
      status: BaseBlocStatus.initial(),
    ));
  }

  /// 탭 선택 이벤트
  void _onTabPressed(
    FindAccountTabPressed event,
    Emitter<FindAccountState> emit,
  ) {
    emit(state.copyWith(currentTab: event.tab));
  }
}
