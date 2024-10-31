part of 'splash_bloc.dart';

@freezed
class SplashState extends BaseBlocState with _$SplashState {
  factory SplashState({
    /// 상태.
    required BaseBlocStatus status,

    /// 다이얼로그 메시지
    @Default('') String message,

    /// 로그인 여부
    @Default(false) bool isLoggedIn,
  }) = _SplashState;
}
