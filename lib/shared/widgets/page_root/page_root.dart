import 'package:flutter/material.dart';
import 'package:withu_app/gen/colors.gen.dart';

class PageRoot extends StatelessWidget {
  final Widget child;

  final bool isLoading;

  final PreferredSizeWidget? appBar;

  final FloatingActionButton? fab;

  final EdgeInsets? padding;

  const PageRoot(
      {super.key,
      required this.child,
      required this.isLoading,
      this.appBar,
      this.fab,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appBar,
          floatingActionButton: fab,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: padding,
              child: child,
            ),
          ),
        ),
        Visibility(
          visible: isLoading,
          child: const Center(
            child: CircularProgressIndicator(
              color: ColorName.primary,
            ),
          ),
        ),
      ],
    );
  }
}
