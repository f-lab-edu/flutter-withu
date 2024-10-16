part of 'loading_bloc.dart';

abstract class LoadingEvent {}

/// Loading On
class OnVisibleLoading extends LoadingEvent {
  OnVisibleLoading();
}

/// Loading Off
class OnInVisibleLoading extends LoadingEvent {
  OnInVisibleLoading();
}
