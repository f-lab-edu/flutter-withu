import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:withu_app/core/utils/utils.dart';
import 'package:withu_app/gen/assets.gen.dart';
import 'package:withu_app/gen/colors.gen.dart';

class BaseInput extends StatelessWidget {
  final TextEditingController? controller;

  final FocusNode? focusNode;

  final double? width;

  final TextStyle? style;

  final String? hintText;

  final TextStyle? hintTextStyle;

  final EdgeInsets? padding;

  final Widget? suffix;

  final String? suffixText;

  final TextStyle? suffixStyle;

  final TextInputType? keyboardType;

  final TextInputAction? textInputAction;

  final int? maxLength;

  final TextAlign textAlign;

  final bool obscureText;

  final Function(String)? onChanged;

  final List<TextInputFormatter>? inputFormatters;

  final String errorText;

  final bool errorVisible;

  const BaseInput({
    super.key,
    this.controller,
    this.focusNode,
    this.width,
    this.style,
    this.hintText,
    this.hintTextStyle,
    this.padding,
    this.onChanged,
    this.suffix,
    this.suffixText,
    this.suffixStyle,
    this.keyboardType,
    this.textInputAction,
    this.maxLength,
    this.textAlign = TextAlign.start,
    this.inputFormatters,
    this.obscureText = false,
    this.errorText = '',
    this.errorVisible = false,
  });

  @override
  Widget build(BuildContext context) {
    final defaultHintStyle = context.textTheme.bodyMediumBold?.copyWith(
      color: ColorName.secondary,
    );

    final defaultTextStyle = context.textTheme.bodyMediumBold?.copyWith(
      color: ColorName.primary,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          padding: padding ?? const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: ColorName.teritary),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  key: Key('${(super.key as ValueKey).value}_input'),
                  controller: controller,
                  focusNode: focusNode,
                  style: style ?? defaultTextStyle,
                  keyboardType: keyboardType,
                  textInputAction: textInputAction ?? TextInputAction.done,
                  maxLength: maxLength,
                  cursorHeight: 16,
                  cursorColor: ColorName.primary80,
                  textAlign: textAlign,
                  inputFormatters: inputFormatters,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: hintTextStyle ?? defaultHintStyle,
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: const EdgeInsets.all(0),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixText: suffixText,
                    suffixStyle: suffixStyle,
                    counterText: '',
                  ),
                  onChanged: onChanged,
                ),
              ),
              suffix ?? const SizedBox(),
            ],
          ),
        ),
        if (errorVisible == true)
          _ErrorText(
            key: Key('${(super.key as ValueKey).value}_error'),
            text: errorText,
          ),
      ],
    );
  }

  /// 이메일 형식 입력
  factory BaseInput.email({
    Key? key,
    TextEditingController? controller,
    FocusNode? focusNode,
    TextInputAction? textInputAction,
    Function(String)? onChanged,
    String errorText = '',
    bool errorVisible = false,
  }) {
    return BaseInput(
      key: key,
      controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.emailAddress,
      textInputAction: textInputAction,
      hintText: StringRes.pleaseEnterEmail.tr,
      onChanged: onChanged,
      errorText: errorText,
      errorVisible: errorVisible,
    );
  }

  /// 비밀번호 형식 입력
  factory BaseInput.password({
    Key? key,
    TextEditingController? controller,
    FocusNode? focusNode,
    TextInputAction? textInputAction,
    Function(String)? onChanged,
    String errorText = '',
    bool errorVisible = false,
    bool obscureText = true,
    VoidCallback? onSuffixPressed,
  }) {
    return BaseInput(
      key: key,
      controller: controller,
      focusNode: focusNode,
      textInputAction: textInputAction,
      obscureText: obscureText,
      hintText: StringRes.pleaseEnterPassword.tr,
      onChanged: onChanged,
      errorText: errorText,
      errorVisible: errorVisible,
      suffix: InkWell(
        key: const Key('password_visible_btn'),
        splashColor: Colors.transparent,
        onTap: onSuffixPressed,
        child: Assets.images.eye.svg(),
      ),
    );
  }
}

/// 에러 문구
class _ErrorText extends StatelessWidget {
  final String text;

  const _ErrorText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.bodySmall?.copyWith(
        color: ColorName.annotations,
      ),
    );
  }
}
