part of 'base_bloc.dart';

/// BLoC Status
abstract class BaseBlocStatus {
  BaseBlocStatus();

  factory BaseBlocStatus.initial() => BaseBlocStatusInitial();

  factory BaseBlocStatus.loading() => BaseBlocStatusLoading();

  factory BaseBlocStatus.refresh() => BaseBlocStatusRefresh();

  factory BaseBlocStatus.success() => BaseBlocStatusSuccess();

  factory BaseBlocStatus.failure() => BaseBlocStatusFailure();

  bool get isInitial => this is BaseBlocStatusInitial;

  bool get isLoading => this is BaseBlocStatusLoading;

  bool get isSuccess => this is BaseBlocStatusSuccess;

  bool get isFailure => this is BaseBlocStatusFailure;

  bool get isRefresh => this is BaseBlocStatusRefresh;
}

class BaseBlocStatusInitial extends BaseBlocStatus {}

class BaseBlocStatusLoading extends BaseBlocStatus {}

class BaseBlocStatusRefresh extends BaseBlocStatus {}

class BaseBlocStatusSuccess extends BaseBlocStatus {}

class BaseBlocStatusFailure extends BaseBlocStatus {}

/// BLoC State
abstract class BaseBlocState {
  final BaseBlocStatus status;

  BaseBlocState({
    required this.status,
  });
}
