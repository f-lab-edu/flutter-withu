import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'loading_event.dart';

part 'loading_state.dart';

class LoadingBloc extends Bloc<LoadingEvent, LoadingState> {
  LoadingBloc() : super(const LoadingState()) {
    on<OnVisibleLoading>(
      (event, emit) => emit(state.copyWith(loading: true)),
    );
    on<OnInVisibleLoading>(
      (event, emit) => emit(state.copyWith(loading: false)),
    );
  }
}
