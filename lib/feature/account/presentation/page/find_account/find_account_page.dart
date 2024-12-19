import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/gen/colors.gen.dart';
import 'package:withu_app/shared/shared.dart';

/// 계정 찾기 화면
@RoutePage()
class FindAccountPage extends StatelessWidget {
  final AccountType accountType;

  const FindAccountPage({
    super.key,
    required this.accountType,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        FindAccountBlocProvider(
          create: (context) => getIt(),
        ),
        FindIdBlocProvider(
          create: (context) => getIt(),
        ),
        PhoneAuthBlocProvider(
          create: (context) => getIt(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          FindIdBlocListener(
            listener: (context, state) {
              _toggleLoading(
                context: context,
                isLoading: state.status.isLoading,
              );
            },
          ),
          PhoneAuthBlocListener(
            listener: (context, state) {
              /// 로딩 설정
              _toggleLoading(
                context: context,
                isLoading: state.status.isLoading,
              );

              /// 인증여부 전달
              context
                  .read<FindIdBloc>()
                  .add(FindIdIsAuthChanged(value: state.isAuth));
            },
          ),
        ],
        child: _FindAccountPageContent(
          accountType: accountType,
        ),
      ),
    );
  }

  void _toggleLoading({
    required BuildContext context,
    required bool isLoading,
  }) {
    if (isLoading) {
      context.read<FindAccountBloc>().add(FindAccountLoadingSet());
    } else {
      context.read<FindAccountBloc>().add(FindAccountLoadingUnSet());
    }
  }
}

class _FindAccountPageContent extends StatelessWidget {
  final AccountType accountType;

  const _FindAccountPageContent({required this.accountType});

  @override
  Widget build(BuildContext context) {
    return FindAccountBlocBuilder(
      builder: (context, state) {
        return PageRoot(
          isLoading: state.status.isLoading,
          appBar: CustomAppBar.back(
            context: context,
          ),
          child: Column(
            children: [
              _FindAccountTabs(),
              Expanded(
                child: FindIdPage(accountType: accountType),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _FindAccountTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FindAccountBlocBuilder(
      builder: (context, state) {
        return Row(
          children: FindAccountTabType.values
              .map(
                (type) => Expanded(
                  child: FindAccountTab(
                    key: type.toKey(),
                    text: type.tr,
                    isSelected: state.currentTab == type,
                    onPressed: () {
                      context
                          .read<FindAccountBloc>()
                          .add(FindAccountTabPressed(tab: type));
                    },
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class FindAccountTab extends StatelessWidget {
  final String text;

  final bool isSelected;

  final VoidCallback onPressed;

  const FindAccountTab({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  Border get selectedBorder => const Border(
        bottom: BorderSide(
          color: ColorName.primary,
          width: 3,
        ),
      );

  Border get defaultBorder => const Border(
        bottom: BorderSide(
          color: ColorName.teritary,
          width: 1,
        ),
      );

  Border get border => isSelected ? selectedBorder : defaultBorder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: border,
        ),
        child: Text(
          text,
          style: context.textTheme.bodyLargeBold?.copyWith(
            color: isSelected ? ColorName.primary : ColorName.secondary,
          ),
        ),
      ),
    );
  }
}
