import 'package:flutter/material.dart';
import 'package:withu_app/gen/colors.gen.dart';
import 'package:withu_app/shared/shared.dart';

/// Dynamic Tab
class BaseTabs extends StatelessWidget {
  final List<BaseTabData> tabs;

  final BaseTabData? selectedTab;

  final void Function(BaseTabData tab) onTap;

  const BaseTabs({
    super.key,
    required this.tabs,
    required this.selectedTab,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorName.teritary,
          ),
        ),
      ),
      child: Row(
        children: tabs
            .map(
              (tab) => Expanded(
                child: BaseTab(
                  data: tab,
                  isSelected: selectedTab == tab,
                  onTap: () => onTap(tab),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
