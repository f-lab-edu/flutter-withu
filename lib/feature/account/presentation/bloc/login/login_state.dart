part of 'login_bloc.dart';

@freezed
class LoginState extends BaseBlocState with _$LoginState {
  factory LoginState({
    /// 상태.
    required BaseBlocStatus status,

    /// 다이얼로그 메시지
    @Default('') String message,

    /// loginId - email 형식
    @Default('') String loginId,

    /// password
    @Default('') String password,
  }) = _LoginState;
}
