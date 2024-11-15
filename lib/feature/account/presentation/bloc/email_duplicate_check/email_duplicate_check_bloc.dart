import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/feature/account/domain/usecase/email_duplicate_check/email_duplicate_check_use_case.dart';

part 'email_duplicate_check_event.dart';

part 'email_duplicate_check_state.dart';

part 'email_duplicate_check_bloc.freezed.dart';

part 'email_duplicate_check_bloc.handler.dart';

class EmailDuplicateCheckBloc
    extends BaseBloc<EmailDuplicateCheckEvent, EmailDuplicateCheckState> {
  final EmailDuplicateCheckUseCase useCase;

  EmailDuplicateCheckBloc({
    required this.useCase,
  }) : super(
          EmailDuplicateCheckState(status: BaseBlocStatus.initial()),
        ) {
    on<EmailDuplicateCheckInputted>(_onEmailInputted);
  }
}
