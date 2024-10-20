import 'package:flutter/cupertino.dart';

class BaseBadge extends StatelessWidget {
  final String text;

  final Color backgroundColor;

  final TextStyle? textStyle;

  final EdgeInsets? margin;

  const BaseBadge({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.textStyle,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 6,
      ),
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
