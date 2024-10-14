import 'package:flutter/material.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/gen/colors.gen.dart';

class RadioChip extends StatelessWidget {
  final String text;

  final bool isSelected;

  final VoidCallback onSelected;

  final EdgeInsets? margin;

  const RadioChip({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onSelected,
    this.margin,
  });

  Color get backgroundColor => isSelected ? ColorName.primary80 : Colors.white;

  Color get textColor => isSelected ? Colors.white : ColorName.primary;

  BoxBorder? get border =>
      isSelected ? null : Border.all(color: ColorName.teritary);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelected,
      child: Container(
        margin: margin,
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
          borderRadius: BorderRadius.circular(
            50,
          ),
        ),
        child: Text(
          text,
          style: context.textTheme.bodySmallBold?.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
