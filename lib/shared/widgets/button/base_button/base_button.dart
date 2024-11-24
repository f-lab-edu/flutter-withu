import 'package:flutter/material.dart';
import 'package:withu_app/core/utils/utils.dart';
import 'package:withu_app/gen/colors.gen.dart';

/// 기본 버튼
class BaseButton extends StatelessWidget {
  final Widget text;

  final Color backgroundColor;

  final VoidCallback onTap;

  final bool enabled;

  const BaseButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.onTap,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: enabled ? onTap : () {},
      child: Container(
        width: double.infinity,
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: text,
      ),
    );
  }

  /// Primary 배경색 버튼
  factory BaseButton.primary({
    required BuildContext context,
    required String text,
    required VoidCallback onTap,
    Key? key,
  }) {
    return BaseButton(
      key: key,
      text: Text(
        text,
        style: context.textTheme.bodyMediumBold?.copyWith(
          color: ColorName.white,
        ),
      ),
      backgroundColor: ColorName.primary,
      onTap: onTap,
    );
  }

  /// Primary 배경색 버튼
  factory BaseButton.disabled({
    required BuildContext context,
    required String text,
    required VoidCallback onTap,
    Key? key,
  }) {
    return BaseButton(
      key: key,
      enabled: false,
      text: Text(
        text,
        style: context.textTheme.bodyMediumBold?.copyWith(
          color: ColorName.secondary,
        ),
      ),
      backgroundColor: ColorName.teritary,
      onTap: onTap,
    );
  }
}
