import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/shared/shared.dart';

class PhoneVerificationView extends StatelessWidget {
  const PhoneVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [PhoneInput()],
    );
  }
}

class PhoneInput extends StatelessWidget {
  const PhoneInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneVerificationBloc, PhoneVerificationState>(
      builder: (context, state) {
        return BaseInput(
          controller: TextEditingController(),
          hintText: StringRes.enterOnlyNumber.tr,
          suffix: InkWell(
            onTap: () {
              if (!state.canRequestVerification) {
                return;
              }
              context
                  .read<PhoneVerificationBloc>()
                  .add(PhoneVerificationCodeRequested());
            },
            child: Text(
              StringRes.authentication.tr,
              style: context.textTheme.bodySmall,
            ),
          ),
          onChanged: (String text) {
            context
                .read<PhoneVerificationBloc>()
                .add(PhoneVerificationCodeInputted(value: text));
          },
        );
      },
    );
  }
}
