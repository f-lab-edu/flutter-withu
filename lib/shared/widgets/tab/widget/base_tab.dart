import 'package:flutter/material.dart';
import 'package:withu_app/shared/shared.dart';

/// 탭 아이템
class BaseTab extends StatelessWidget {
  final BaseTabData data;

  final bool isSelected;

  final VoidCallback onTap;

  const BaseTab({
    super.key,
    required this.data,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = isSelected ? Colors.black : Colors.grey;
    final borderColor = isSelected ? Colors.black : Colors.transparent;

    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: borderColor,
              width: 2,
            ),
          ),
        ),
        child: Text(
          data.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
