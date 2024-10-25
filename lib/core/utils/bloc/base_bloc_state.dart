part of 'base_bloc.dart';

/// BLoC Status
abstract class BaseBlocStatus {
  BaseBlocStatus();

  factory BaseBlocStatus.initial() => BaseBlocStatusInitial();

  factory BaseBlocStatus.loading() => BaseBlocStatusLoading();

  factory BaseBlocStatus.success() => BaseBlocStatusSuccess();

  factory BaseBlocStatus.failure() => BaseBlocStatusFailure();

  bool get isSuccess => this is BaseBlocStatusSuccess;
}

class BaseBlocStatusInitial extends BaseBlocStatus {}

class BaseBlocStatusLoading extends BaseBlocStatus {}

class BaseBlocStatusSuccess extends BaseBlocStatus {}

class BaseBlocStatusFailure extends BaseBlocStatus {}

/// BLoC State
abstract class BaseBlocState {
  final BaseBlocStatus status;

  BaseBlocState({
    required this.status,
  });
}
