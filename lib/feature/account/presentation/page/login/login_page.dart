import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/core/router/router.gr.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/gen/assets.gen.dart';
import 'package:withu_app/shared/shared.dart';

/// 로그인 화면
@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => getIt(),
      child: const LoginPageContent(),
    );
  }
}

class LoginPageContent extends StatefulWidget {
  const LoginPageContent({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPageContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) async {
        /// 로그인 성공
        if (state.status.isSuccess) {
          getItAppRouter.replaceAll([const JobPostingsRoute()]);
        }

        if (state.hasFailMessage) {
          await CustomAlertDialog.showContentAlert(
            context: context,
            content: state.message,
            closeCallback: () {
              context.read<LoginBloc>().add(LoginMessageCleared());
            },
          );
        }
      },
      builder: (context, state) {
        return PageRoot(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          isLoading: state.status.isLoading,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 90),
                Center(
                  child: Assets.images.logo.svg(),
                ),
                const SizedBox(height: 50),
                LoginTab(
                  selectedType: state.selectedTab,
                  onTap: (LoginTabData data) {
                    context
                        .read<LoginBloc>()
                        .add(LoginTabPressed(type: data.value));
                  },
                ),
                const SizedBox(height: 26),
                BaseInput.email(
                  key: const Key('email_input'),
                  textInputAction: TextInputAction.next,
                  errorText: StringRes.pleaseEnterValidEmail.tr,
                  errorVisible: !state.loginId.isValid,
                  onChanged: (String text) {
                    context.read<LoginBloc>().add(LoginIdInputted(value: text));
                  },
                ),
                const SizedBox(height: 30),
                BaseInput.password(
                  key: const Key('password_input'),
                  errorText: StringRes.pleaseEnterValidPassword.tr,
                  obscureText: !state.isVisiblePassword,
                  errorVisible: !state.password.isValid,
                  onChanged: (String text) {
                    context
                        .read<LoginBloc>()
                        .add(LoginPasswordInputted(value: text));
                  },
                  onSuffixPressed: () {
                    context
                        .read<LoginBloc>()
                        .add(LoginVisiblePasswordToggled());
                  },
                ),
                const SizedBox(height: 80),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        StringRes.signUp.tr,
                        style: context.textTheme.bodySmall,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        StringRes.findIdPw.tr,
                        style: context.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                _LoginButton(
                  key: const Key('login_button'),
                  enabled: state.isEnabledLogin,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  final bool enabled;

  const _LoginButton({
    super.key,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    final text = StringRes.login.tr;
    return enabled
        ? BaseButton.primary(
            context: context,
            text: text,
            onTap: () {
              context.read<LoginBloc>().add(LoginBtnPressed());
            },
          )
        : BaseButton.disabled(
            context: context,
            text: text,
            onTap: () {},
          );
  }
}
