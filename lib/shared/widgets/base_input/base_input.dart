import 'package:flutter/material.dart';
import 'package:withu_app/gen/colors.gen.dart';

class BaseInput extends StatelessWidget {
  final TextEditingController? controller;

  final TextStyle? style;

  final String? hintText;

  final TextStyle? hintTextStyle;

  final EdgeInsets? padding;

  const BaseInput({
    super.key,
    this.controller,
    this.style,
    this.hintText,
    this.hintTextStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ColorName.teritary),
        ),
      ),
      child: TextField(
        controller: controller,
        style: style,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintTextStyle,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
