import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(LoadingState()) {
    if (kDebugMode) {
      print('Loading Splash Bloc');
    }
    on<InitializeApp>(_onInitializeApp);
  }

  FutureOr<void> _onInitializeApp(
    InitializeApp event,
    Emitter<SplashState> emit,
  ) async {
    if (kDebugMode) {
      print('onInitializeApp');
    }
    // 1초 대기 후 홈 화면으로 이동.
    await Future.delayed(const Duration(seconds: 1));

    // 공고 목록 화면으로 이동
    emit(NavigateToNextScreenState());
  }
}
