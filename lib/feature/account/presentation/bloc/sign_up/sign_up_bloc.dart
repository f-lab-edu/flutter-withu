import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

part 'sign_up_bloc.handler.dart';

typedef SignUpBlocBuilder = BlocBuilder<SignUpBloc, SignUpState>;

typedef SignUpBlocListener = BlocListener<SignUpBloc, SignUpState>;

class SignUpBloc extends BaseBloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;

  SignUpBloc({
    required this.signUpUseCase,
  }) : super(
          SignUpState(status: BaseBlocStatus.initial()),
        ) {
    on<SignUpLoadingSet>(_onLoadingSet);
    on<SignUpLoadingUnSet>(_onLoadingUnSet);
    on<SignUpMessageCleared>(_onMessageCleared);
    on<SignUpNameInputted>(_onNameInputted);
    on<SignUpBirthDateInputted>(_onBirthDateInputted);
    on<SignUpGenderSelected>(_onGenderSelected);
    on<SignUpPhoneInputted>(_onPhoneInputted);
    on<SignUpPhoneAuthChanged>(_onPhoneAuthChanged);
    on<SignUpLoginIdInputted>(_onLoginIdInputted);
    on<SignUpIsUniqueIdChanged>(_onIsUniqueIdChanged);
    on<SignUpPasswordObscureToggled>(_onPasswordObscureToggled);
    on<SignUpPasswordInputted>(_onPasswordInputted);
    on<SignUpPasswordVerifyInputted>(_onPasswordVerifyInputted);
    on<SignUpSubmitPressed>(_onSubmitPressed);
  }
}
