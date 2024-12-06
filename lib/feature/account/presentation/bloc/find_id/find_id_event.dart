part of 'find_id_bloc.dart';

abstract class FindIdEvent extends BaseBlocEvent {}

/// 인증 여부 변경
class FindIdIsAuthChanged extends FindIdEvent {
  final bool value;

  FindIdIsAuthChanged({required this.value});
}

/// 아이디 찾기 클릭
class FindIdPressed extends FindIdEvent {
  final Phone phone;

  final AuthCode authCode;

  FindIdPressed({
    required this.phone,
    required this.authCode,
  });
}
