part of 'find_account_bloc.dart';

extension FindAccountBlocHandler on FindAccountBloc {
  /// 탭 선택 이벤트
  void _onTabPressed(
    FindAccountTabPressed event,
    Emitter<FindAccountState> emit,
  ) {
    emit(state.copyWith(currentTab: event.tab));
  }
}
