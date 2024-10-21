import 'package:flutter/material.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/gen/colors.gen.dart';

/// 더보기 팝업 메뉴
class MoreOptions<T extends L10nKeyProvider> extends StatelessWidget {
  final List<T> items;

  final Function(T) onSelected;

  const MoreOptions({
    super.key,
    required this.items,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<T>(
      initialValue: null,
      position: PopupMenuPosition.under,
      color: ColorName.white,
      offset: const Offset(0, 10),
      popUpAnimationStyle: AnimationStyle(
        duration: const Duration(milliseconds: 200),
        reverseDuration: const Duration(milliseconds: 200),
      ),
      onSelected: onSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      itemBuilder: (BuildContext context) => items
          .map(
            (item) => PopupMenuItem<T>(
              value: item,
              textStyle: context.textTheme.bodyMediumBold,
              child: Center(
                child: Text(
                  item.tr,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
