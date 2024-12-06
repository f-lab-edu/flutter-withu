part of 'find_id_bloc.dart';

abstract class FindIdEvent extends BaseBlocEvent {}

/// 인증 여부 변경
class FindIdIsAuthChanged extends FindIdEvent {
  final bool value;

  FindIdIsAuthChanged({required this.value});
}
