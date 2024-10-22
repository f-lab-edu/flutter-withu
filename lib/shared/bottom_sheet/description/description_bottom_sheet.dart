import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/utils/utils.dart';
import 'package:withu_app/gen/colors.gen.dart';
import 'package:withu_app/shared/shared.dart';

class DescriptionBottomSheet extends StatelessWidget {
  final String description;

  final String actionText;

  final VoidCallback onTap;

  const DescriptionBottomSheet({
    super.key,
    required this.description,
    required this.actionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BaseBottomSheet(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        children: <Widget>[
          Text(
            description,
            style: context.textTheme.bodySmall?.copyWith(
              color: ColorName.white,
            ),
          ),
          const SizedBox(height: 10),
          const Divider(
            height: 0.5,
            color: ColorName.secondary,
          ),
          BaseButton(
            text: Text(
              actionText,
              style: context.textTheme.bodyMediumBold?.copyWith(
                color: ColorName.white,
              ),
            ),
            backgroundColor: ColorName.primary80,
            onTap: onTap,
          )
        ],
      ),
    );
  }

  /// 바텀 시트 보기.
  static Future show({
    required BuildContext context,
    required DescriptionBottomSheetOption option,
    Bloc? bloc,
  }) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DescriptionBottomSheet(
          description: option.description,
          actionText: option.actionText,
          onTap: () {
            option.exec(bloc);
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
