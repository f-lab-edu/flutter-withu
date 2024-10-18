import 'package:flutter/material.dart';
import 'package:withu_app/gen/colors.gen.dart';

class BaseSwitch extends StatelessWidget {
  final bool isOn;

  final VoidCallback onTap;

  double width;

  double height;

  BaseSwitch({
    super.key,
    required this.isOn,
    required this.onTap,
    this.width = 32.0,
    this.height = 16,
  });

  Color get trackColor => isOn ? ColorName.primary80 : ColorName.white;

  Color get thumbColor => isOn ? ColorName.white : ColorName.primary80;

  Alignment get align => isOn ? Alignment.centerRight : Alignment.centerLeft;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: width,
        height: height,
        padding: const EdgeInsets.all(2),
        alignment: align,
        decoration: BoxDecoration(
          color: trackColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: ColorName.primary80,
            width: 2,
          ),
        ),
        child: Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: thumbColor,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
