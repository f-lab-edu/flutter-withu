import 'package:flutter/material.dart';

extension BulidContextTextThemeEx on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension TextThemeEx on TextTheme {
  TextStyle? get bodyLargeBold => bodyLarge?.copyWith(
        fontWeight: FontWeight.w700,
      );

  TextStyle? get bodyMediumBold => bodyMedium?.copyWith(
        fontWeight: FontWeight.w700,
      );

  TextStyle? get bodySmallBold => bodySmall?.copyWith(
        fontWeight: FontWeight.w700,
      );
}
