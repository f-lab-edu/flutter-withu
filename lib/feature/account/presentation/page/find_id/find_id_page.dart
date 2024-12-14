import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/gen/colors.gen.dart';
import 'package:withu_app/shared/shared.dart';

/// 아이디 찾기 화면
class FindIdPage extends StatelessWidget {
  final AccountType accountType;

  const FindIdPage({
    super.key,
    required this.accountType,
  });

  @override
  Widget build(BuildContext context) {
    return FindIdBlocBuilder(
      builder: (context, state) {
        if (state.status.isSuccess) {
          return const FindIdSuccess(loginId: 'test@test.com');
        } else if (state.status.isFailure) {
          return const FindIdFailure();
        } else {
          return _FindIdPageContent();
        }
      },
    );
  }
}

class _FindIdPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FindIdBlocConsumer(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(24, 40, 24, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                StringRes.phone.tr,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: ColorName.secondary,
                ),
              ),
              const PhoneAuthWidget(),
              const Spacer(),
              _FindIdButton(
                isEnabled: state.isAuth,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _FindIdButton extends StatelessWidget {
  final bool isEnabled;

  const _FindIdButton({
    required this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return EnabledButton(
      text: StringRes.findId.tr,
      isEnabled: isEnabled,
      onTap: () {
        final phoneAuthBloc = context.read<PhoneAuthBloc>();
        context.read<FindIdBloc>().add(
              FindIdPressed(
                phone: phoneAuthBloc.state.phone,
                authCode: phoneAuthBloc.state.authCode,
              ),
            );
      },
    );
  }
}
