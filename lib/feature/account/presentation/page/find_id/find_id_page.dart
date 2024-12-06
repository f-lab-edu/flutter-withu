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
            listener: (context, state) {},
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
                "휴대폰",
                style: context.textTheme.bodyMedium?.copyWith(
                  color: ColorName.secondary,
                ),
              ),
              const PhoneAuthWidget(),
              const Spacer(),
              _FindIdButton(),
            ],
          ),
        );
      },
    );
  }
}

class _FindIdButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseButton.disabled(
      context: context,
      text: StringRes.findId.tr,
      onTap: () {},
    );
  }
}
