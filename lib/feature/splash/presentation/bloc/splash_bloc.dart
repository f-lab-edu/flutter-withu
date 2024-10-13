import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(LoadingState()) {
    on<OnInitializeApp>(_onOnInitializeApp);
  }

  FutureOr<void> _onOnInitializeApp(
    OnInitializeApp event,
    Emitter<SplashState> emit,
  ) async {
    // 1초 대기 후 홈 화면으로 이동.
    await Future.delayed(const Duration(seconds: 1));

    // 공고 목록 화면으로 이동
    emit(NavigateToNextScreenState());
  }
}
