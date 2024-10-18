import 'package:flutter/material.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/gen/colors.gen.dart';

/// UnderLine이 있는 텍스트 폼
class LinedTextFormField extends StatelessWidget {
  final TextEditingController? controller;

  final bool readOnly;

  final Widget? suffix;

  final Function(String text)? onChanged;

  const LinedTextFormField({
    super.key,
    this.controller,
    this.readOnly = false,
    this.suffix,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(),
      child: TextFormField(
        controller: controller,
        style: context.textTheme.bodyMediumBold?.copyWith(
          height: 48 / 14,
        ),
        cursorHeight: 20,
        minLines: 2,
        maxLines: 2,
        readOnly: readOnly,
        onChanged: onChanged,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          border: InputBorder.none,
          suffix: suffix,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = ColorName.teritary
      ..strokeWidth = 1;

    // 첫 번째 줄
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paint,
    );

    // 두 번째 줄 (바닥)
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width, size.height),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
