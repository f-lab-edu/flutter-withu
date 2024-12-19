import 'package:flutter/cupertino.dart';
import 'package:withu_app/core/utils/utils.dart';
import 'package:withu_app/gen/colors.gen.dart';
import 'package:withu_app/shared/shared.dart';

class EnabledButton extends StatelessWidget {
  final String text;

  final bool isEnabled;

  final VoidCallback onTap;

  const EnabledButton({
    super.key,
    required this.text,
    required this.isEnabled,
    required this.onTap,
  });

  Color get textColor => isEnabled ? ColorName.white : ColorName.secondary;

  Color get bgColor => isEnabled ? ColorName.primary : ColorName.teritary;

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      text: Text(
        text,
        style: context.textTheme.bodyMediumBold?.copyWith(
          color: textColor,
        ),
      ),
      backgroundColor: bgColor,
      onTap: isEnabled ? onTap : () {},
    );
  }
}
