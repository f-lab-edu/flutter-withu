import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/shared/shared.dart';

/// 이메일 입력 및 중복 검사 위젯
class EmailDuplicateCheckWidget extends StatelessWidget {
  final TextEditingController? controller;

  final _debounce = Debouncer(milliseconds: 500);

  EmailDuplicateCheckWidget({
    super.key,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EmailDuplicateCheckBloc>(
      create: (context) => getIt(),
      child: BlocConsumer<EmailDuplicateCheckBloc, EmailDuplicateCheckState>(
        listener: (context, state) {},
        builder: (context, state) {
          return BaseInput(
            controller: controller,
            key: EmailDuplicateCheckKey.emailInput.toKey(),
            hintText: StringRes.pleaseEnterEmail.tr,
            errorText: state.errorText,
            errorVisible: state.errorVisible.isVisible,
            onChanged: (String text) {
              _debounce.run(() {
                context
                    .read<EmailDuplicateCheckBloc>()
                    .add(EmailDuplicateCheckInputted(value: text));
              });
            },
          );
        },
      ),
    );
  }
}
