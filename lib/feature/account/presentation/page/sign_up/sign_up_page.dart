import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/feature/account/presentation/widget/gender_select/gender_select.dart';
import 'package:withu_app/shared/shared.dart';

import 'sign_up_page_key.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PhoneAuthBloc>(
          create: (context) => getIt<PhoneAuthBloc>(),
        ),
        BlocProvider<EmailDuplicateCheckBloc>(
          create: (context) => getIt<EmailDuplicateCheckBloc>(),
        ),
        BlocProvider<SignUpBloc>(
          create: (context) => getIt<SignUpBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          PhoneAuthBlocListener(
            listener: (context, state) {
              context
                  .read<SignUpBloc>()
                  .add(SignUpPhoneInputted(phone: state.phone));
              context
                  .read<SignUpBloc>()
                  .add(SignUpPhoneAuthChanged(isAuth: state.isAuth));
            },
          ),
          EmailDuplicateCheckBlocListener(
            listener: (context, state) {
              context
                  .read<SignUpBloc>()
                  .add(SignUpLoginIdInputted(loginId: state.email));
              context
                  .read<SignUpBloc>()
                  .add(SignUpIsUniqueIdChanged(isUnique: state.isUnique));
            },
          ),
        ],
        child: const SignUpPageContent(),
      ),
    );
  }
}

class SignUpPageContent extends StatelessWidget {
  const SignUpPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SignUpBlocBuilder(
      builder: (context, state) {
        return PageRoot(
          isLoading: state.status.isLoading,
          appBar: CustomAppBar.back(context: context),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FieldName(text: StringRes.name.tr),
                const NameInput(),
                const SizedBox(height: 30),
                FieldName(text: StringRes.birthDate.tr),
                const BirthDateInput(),
                const SizedBox(height: 30),
                FieldName(text: StringRes.gender.tr),
                GenderSelect(
                  key: SignUpPageKey.gender.toKey(),
                  selectedType: state.gender,
                ),
                const SizedBox(height: 30),
                FieldName(text: StringRes.phone.tr),
                const PhoneAuthWidget(),
                const SizedBox(height: 30),
                FieldName(text: StringRes.email.tr),
                EmailDuplicateCheckWidget(),
                const SizedBox(height: 30),
                FieldName(text: StringRes.password.tr),
                const Password(),
                const PasswordVerify(),
                const SizedBox(height: 52),
                const SubmitButton(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        );
      },
    );
  }
}

class FieldName extends StatelessWidget {
  final String text;

  const FieldName({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.bodyMedium,
    );
  }
}

class NameInput extends StatelessWidget {
  const NameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseInput(
      key: SignUpPageKey.name.toKey(),
      hintText: StringRes.enterTwoOrMoreChars.tr,
      maxLength: 10,
      onChanged: (String text) {
        context.read<SignUpBloc>().add(SignUpNameInputted(value: text));
      },
    );
  }
}

class BirthDateInput extends StatelessWidget {
  const BirthDateInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseInput(
      key: SignUpPageKey.birthDate.toKey(),
      keyboardType: TextInputType.number,
      hintText: StringRes.enterEightChars.tr,
      maxLength: 8,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      onChanged: (String text) {
        context.read<SignUpBloc>().add(SignUpBirthDateInputted(value: text));
      },
    );
  }
}

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return SignUpBlocBuilder(
      builder: (context, state) {
        return BaseInput.password(
          key: SignUpPageKey.password.toKey(),
          obscureText: state.isPasswordObscure,
          onSuffixPressed: () {
            context.read<SignUpBloc>().add(SignUpPasswordObscureToggled());
          },
          onChanged: (String text) {
            context.read<SignUpBloc>().add(SignUpPasswordInputted(value: text));
          },
        );
      },
    );
  }
}

class PasswordVerify extends StatelessWidget {
  const PasswordVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return SignUpBlocBuilder(builder: (context, state) {
      return BaseInput(
        key: SignUpPageKey.passwordVerify.toKey(),
        hintText: StringRes.verifyPassword.tr,
        obscureText: state.isPasswordObscure,
        errorText: StringRes.pleaseEnterValidPassword.tr,
        errorVisible: state.isPasswordErrorVisible.isVisible,
        onChanged: (String text) {
          context
              .read<SignUpBloc>()
              .add(SignUpPasswordVerifyInputted(value: text));
        },
      );
    });
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SignUpBlocBuilder(builder: (context, state) {
      return EnabledButton(
        key: SignUpPageKey.submitBtn.toKey(),
        text: StringRes.signUp.tr,
        isEnabled: state.isEnabledSubmit,
        onTap: () {
          context.read<SignUpBloc>().add(SignUpSubmitPressed());
        },
      );
    });
  }
}
