import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/utils/bloc/base_bloc.dart';
import 'package:withu_app/feature/account/account.dart';

part 'phone_verification_event.dart';

part 'phone_verification_state.dart';

part 'phone_verification_bloc.freezed.dart';

part 'phone_verification_bloc.handler.dart';

class PhoneVerificationBloc extends BaseBloc<PhoneVerificationEvent, PhoneVerificationState> {
  final AccountUseCase accountUseCase;

  PhoneVerificationBloc({
    required this.accountUseCase,
  }) : super(
          PhoneVerificationState(status: BaseBlocStatus.initial()),
        ) {
    on<PhoneVerificationPhoneInputted>(_onPhoneInputted);
    on<PhoneVerificationAuthCodeRequested>(_onAuthCodeRequested);
    on<PhoneVerificationAuthCodeInputted>(_onAuthCodeInputted);
  }
}
