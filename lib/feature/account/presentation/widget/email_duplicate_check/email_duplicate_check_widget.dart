import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/feature/account/presentation/widget/email_duplicate_check/email_duplicate_check_key.dart';
import 'package:withu_app/shared/shared.dart';

/// 이메일 입력 및 중복 검사 위젯
class EmailDuplicateCheckWidget extends StatefulWidget {
  const EmailDuplicateCheckWidget({super.key});

  @override
  State<StatefulWidget> createState() => _EmailDuplicateCheckWidget();
}

class _EmailDuplicateCheckWidget extends State<EmailDuplicateCheckWidget> {
  late final TextEditingController _controller;
  late final _bloc = getIt<EmailDuplicateCheckBloc>();

  final _debounce = Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    _debounce.run(() {
      _bloc.add(
        EmailDuplicateCheckInputted(value: _controller.text),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EmailDuplicateCheckBloc>(
      create: (context) => _bloc,
      child: BlocConsumer<EmailDuplicateCheckBloc, EmailDuplicateCheckState>(
        listener: (context, state) {
          logger.i(state.errorVisible);
        },
        builder: (context, state) {
          return BaseInput(
            controller: _controller,
            key: EmailDuplicateCheckKey.emailInput.toKey(),
            hintText: StringRes.pleaseEnterEmail.tr,
            errorText: StringRes.emailDuplicateError.tr,
            errorVisible: state.errorVisible.isVisible,
          );
        },
      ),
    );
  }
}
