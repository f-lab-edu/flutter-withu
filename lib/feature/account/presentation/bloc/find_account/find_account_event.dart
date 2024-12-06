part of 'find_account_bloc.dart';

abstract class FindAccountEvent extends BaseBlocEvent {}

/// 탭 클릭 이벤트
class FindAccountTabPressed extends FindAccountEvent {
  final FindAccountTabType tab;

  FindAccountTabPressed({required this.tab});
}
