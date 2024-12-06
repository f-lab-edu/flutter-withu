import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/gen/colors.gen.dart';
import 'package:withu_app/shared/shared.dart';

class FindAccountPage extends StatelessWidget {
  const FindAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FindAccountBloc>(
      create: (context) => getIt(),
      child: _FindAccountPageContent(),
    );
  }
}

class _FindAccountPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FindAccountBlocBuilder(
      builder: (context, state) {
        return PageRoot(
          isLoading: state.status.isLoading,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _FindAccountTabs(),
              ],
            ),
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
                (type) => _FindAccountTab(
                  text: type.tr,
                  isSelected: state.currentTab == type,
                  onPressed: () {
                    context
                        .read<FindAccountBloc>()
                        .add(FindAccountTabPressed(tab: type));
                  },
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
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: border,
        ),
        child: Text(
          text,
          style: context.textTheme.bodyMediumBold,
        ),
      ),
    );
  }
}
