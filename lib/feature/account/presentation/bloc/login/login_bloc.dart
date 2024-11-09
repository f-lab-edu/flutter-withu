import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

part 'login_bloc.handler.dart';

part 'login_bloc_converter.dart';

class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  final AccountUseCase accountUseCase;

  LoginBloc({
    required this.accountUseCase,
  }) : super(
          LoginState(status: BaseBlocStatus.initial()),
        ) {
    on<LoginMessageCleared>(_onMessageCleared);
    on<LoginIdInputted>(_onIdInputted);
    on<LoginPasswordInputted>(_onPasswordInputted);
    on<LoginBtnPressed>(_onBtnPressed);
    on<LoginTabPressed>(_onTabPressed);
    on<LoginVisiblePasswordToggled>(_onVisiblePasswordToggled);
  }
}
