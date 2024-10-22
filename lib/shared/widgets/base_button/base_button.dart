import 'package:flutter/material.dart';

/// 기본 버튼
class BaseButton extends StatelessWidget {
  final Widget text;

  final Color backgroundColor;

  final VoidCallback onTap;

  const BaseButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
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
}
