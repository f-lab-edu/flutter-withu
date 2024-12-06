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
  const FindAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        FindAccountBlocProvider(
          create: (context) => getIt(),
        ),
        PhoneAuthBlocProvider(
          create: (context) => getIt(),
        ),
      ],
      child: MultiBlocListener(listeners: [
        PhoneAuthBlocListener(
          listener: (context, state) {
            _toggleLoading(
              context: context,
              isLoading: state.status.isLoading,
            );
          },
        )
      ], child: _FindAccountPageContent()),
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
              const Expanded(child: FindIdPage()),
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
                  child: _FindAccountTab(
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

class _FindAccountTab extends StatelessWidget {
  final String text;

  final bool isSelected;

  final VoidCallback onPressed;

  const _FindAccountTab({
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
