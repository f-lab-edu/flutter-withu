import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/shared/shared.dart';

/// 휴대폰 번호 인증 UI
class PhoneVerificationView extends StatelessWidget {
  const PhoneVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhoneVerificationBloc>(
      create: (context) => getIt(),
      child: const Column(
        children: [
          PhoneInput(),
          VerificationCodeInput(),
        ],
      ),
    );
  }
}

/// 휴대폰번호 입력
class PhoneInput extends StatelessWidget {
  const PhoneInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneVerificationBloc, PhoneVerificationState>(
      builder: (context, state) {
        return BaseInput(
          hintText: StringRes.enterOnlyNumber.tr,
          maxLength: 11,
          keyboardType: TextInputType.phone,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          suffix: const VerificationBtn(),
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

/// 인증 버튼
class VerificationBtn extends StatelessWidget {
  const VerificationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneVerificationBloc, PhoneVerificationState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            if (!state.canRequestVerification) {
              return;
            }
            context
                .read<PhoneVerificationBloc>()
                .add(PhoneVerificationCodeRequested());
          },
          child: Text(
            StringRes.verification.tr,
            style: context.textTheme.bodySmall,
          ),
        );
      },
    );
  }
}

/// 인증번호 입력
class VerificationCodeInput extends StatelessWidget {
  const VerificationCodeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneVerificationBloc, PhoneVerificationState>(
      builder: (context, state) {
        return BaseInput(
          key: const Key('verification_code_input'),
          hintText: StringRes.enterVerificationCode.tr,
          errorText: "! ${StringRes.invalidVerificationCode.tr}",
          errorVisible: state.code.isValid,
          maxLength: 6,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
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
