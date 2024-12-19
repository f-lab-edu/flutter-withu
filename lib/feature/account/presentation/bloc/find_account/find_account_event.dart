part of 'find_account_bloc.dart';

abstract class FindAccountEvent extends BaseBlocEvent {}

/// Loading 설정
class FindAccountLoadingSet extends FindAccountEvent {}

/// Loading 해제
class FindAccountLoadingUnSet extends FindAccountEvent {}

/// 탭 클릭 이벤트
class FindAccountTabPressed extends FindAccountEvent {
  final FindAccountTabType tab;

  FindAccountTabPressed({required this.tab});
}
