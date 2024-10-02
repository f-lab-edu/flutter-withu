part of 'splash_bloc.dart';

sealed class SplashState {}

/// 로딩 상태
class LoadingState extends SplashState {}

/// 다음 화면으로 넘어가기
class NavigateToNextScreenState extends SplashState {}
