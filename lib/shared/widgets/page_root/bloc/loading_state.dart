part of 'loading_bloc.dart';

class LoadingState extends Equatable {
  final bool loading;

  const LoadingState({
    this.loading = false,
  });

  LoadingState copyWith({
    bool? loading,
  }) {
    return LoadingState(
      loading: loading ?? this.loading,
    );
  }

  @override
  List<Object?> get props => [loading];
}
