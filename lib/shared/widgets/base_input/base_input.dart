import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:withu_app/gen/colors.gen.dart';

class BaseInput extends StatelessWidget {
  final TextEditingController? controller;

  final double? width;

  final TextStyle? style;

  final String? hintText;

  final TextStyle? hintTextStyle;

  final EdgeInsets? padding;

  final String? suffix;

  final TextStyle? suffixStyle;

  final TextInputType? keyboardType;

  final int? maxLength;

  final TextAlign textAlign;

  final Function(String)? onChanged;

  final List<TextInputFormatter>? inputFormatters;


  const BaseInput({
    super.key,
    this.controller,
    this.width,
    this.style,
    this.hintText,
    this.hintTextStyle,
    this.padding,
    this.onChanged,
    this.suffix,
    this.suffixStyle,
    this.keyboardType,
    this.maxLength,
    this.textAlign = TextAlign.start,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: ColorName.teritary),
        ),
      ),
      child: TextField(
        controller: controller,
        style: style,
        keyboardType: keyboardType,
        maxLength: maxLength,
        cursorHeight: 16,
        cursorColor: ColorName.primary80,
        textAlign: textAlign,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintTextStyle,
          border: InputBorder.none,
          isDense: true,
          contentPadding: const EdgeInsets.all(0),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixText: suffix,
          suffixStyle: suffixStyle,
          counterText: '',
        ),
        onChanged: onChanged,
      ),
    );
  }
}
