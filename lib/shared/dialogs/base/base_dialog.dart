import 'package:flutter/material.dart';
import 'package:withu_app/gen/colors.gen.dart';

class BaseDialog extends StatelessWidget {
  final Widget child;

  const BaseDialog({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: ColorName.white,
      child: IntrinsicHeight(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 10,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
