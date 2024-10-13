import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  final Widget? backButton;

  final List<Widget>? trailing;

  CustomAppBar({
    super.key,
    this.backButton,
    this.trailing,
  }) : super(
          leading: backButton,
          actions: trailing,
        );

  /// 뒤로가기.
  factory CustomAppBar.back({
    required BuildContext context,
    List<Widget>? trailing,
  }) {
    return CustomAppBar(
      backButton: IconButton(
        // TODO: 이미지 바꾸기.
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          context.back();
        },
      ),
      trailing: trailing,
    );
  }
}
