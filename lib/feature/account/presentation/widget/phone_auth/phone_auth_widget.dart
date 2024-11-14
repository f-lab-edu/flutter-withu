import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/shared/shared.dart';

/// 휴대폰 번호 인증 UI
class PhoneAuthWidget extends StatelessWidget {
  const PhoneAuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhoneAuthBloc>(
      create: (context) => getIt(),
      child: const Column(
        children: [
          PhoneInput(),
          AuthCodeInput(),
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
    return BlocBuilder<PhoneAuthBloc, PhoneAuthState>(
      builder: (context, state) {
        return BaseInput(
          key: PhoneAuthWidgetKey.phoneInput.toKey(),
          hintText: StringRes.enterOnlyNumber.tr,
          maxLength: 11,
          keyboardType: TextInputType.phone,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          suffix: const SendAuthBtn(),
          onChanged: (String text) {
            context
                .read<PhoneAuthBloc>()
                .add(PhoneAuthPhoneInputted(value: text));
          },
        );
      },
    );
  }
}

/// 인증 버튼
class SendAuthBtn extends StatelessWidget {
  const SendAuthBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneAuthBloc, PhoneAuthState>(
      builder: (context, state) {
        return InkWell(
          key: PhoneAuthWidgetKey.sendAuthBtn.toKey(),
          onTap: () {
            if (!state.canRequestVerification) {
              return;
            }
            context.read<PhoneAuthBloc>().add(PhoneAuthAuthCodeSent());
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
class AuthCodeInput extends StatelessWidget {
  const AuthCodeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneAuthBloc, PhoneAuthState>(
      builder: (context, state) {
        return BaseInput(
          key: PhoneAuthWidgetKey.authCodeInput.toKey(),
          hintText: StringRes.enterVerificationCode.tr,
          errorText: "! ${StringRes.invalidVerificationCode.tr}",
          errorVisible: state.isVisibleAuthCodeError,
          maxLength: 6,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          onChanged: (String text) {
            context
                .read<PhoneAuthBloc>()
                .add(PhoneAuthAuthCodeInputted(value: text));
          },
        );
      },
    );
  }
}
