import 'package:flutter/material.dart';
import 'package:withu_app/gen/colors.gen.dart';

class CustomTheme {
  const CustomTheme();

  static ThemeData get theme {
    return ThemeData(
      primaryColor: ColorName.primary,
      textSelectionTheme: textSelectionTheme,
      textTheme: textTheme,
      progressIndicatorTheme: progressTheme,

      /// PopupMenu selected color
      highlightColor: ColorName.teritary,
    );
  }

  /// Indicator Theme
  static ProgressIndicatorThemeData get progressTheme {
    return const ProgressIndicatorThemeData(
      color: ColorName.annotations,
    );
  }

  /// Text Input related
  static TextSelectionThemeData get textSelectionTheme {
    return const TextSelectionThemeData(
      cursorColor: ColorName.primary,
    );
  }

  /// 텍스트 테마
  static TextTheme get textTheme {
    return const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: ColorName.primary,
        height: 38.4 / 24,
        letterSpacing: -0.5,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: ColorName.primary,
        height: 32 / 20,
        letterSpacing: -0.5,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: ColorName.primary,
        height: 28.8 / 18,
        letterSpacing: -0.5,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: ColorName.primary,
        height: 25.6 / 16,
        letterSpacing: -0.5,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: ColorName.primary,
        height: 22.4 / 14,
        letterSpacing: -0.5,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorName.primary,
        height: 19.2 / 12,
        letterSpacing: -0.5,
      ),
    );
  }
}
