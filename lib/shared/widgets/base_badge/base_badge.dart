import 'package:flutter/cupertino.dart';

class BaseBadge extends StatelessWidget {
  final String text;

  final TextStyle? textStyle;

  final Color backgroundColor;

  const BaseBadge({
    super.key,
    required this.text,
    this.textStyle,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 6,
      ),
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
