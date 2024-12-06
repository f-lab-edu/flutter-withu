import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/gen/colors.gen.dart';
import 'package:withu_app/shared/shared.dart';

/// 아이디 찾기 화면
class FindIdPage extends StatelessWidget {
  const FindIdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        PhoneAuthBlocProvider(
          create: (context) => getIt(),
        ),
        FindIdBlocProvider(
          create: (context) => getIt(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          PhoneAuthBlocListener(
            listener: (context, state) {
              context
                  .read<FindIdBloc>()
                  .add(FindIdIsAuthChanged(value: state.isAuth));
            },
          ),
        ],
        child: _FindIdPageContent(),
      ),
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
