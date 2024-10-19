import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:withu_app/core/utils/utils.dart';
import 'package:withu_app/shared/dialogs/dialogs.dart';

class GuideDialog extends StatelessWidget {
  final String title;

  final String description;

  const GuideDialog({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.textTheme.bodyMediumBold,
          ),
          const SizedBox(height: 11),
          Text(
            description,
            style: context.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  /// 이동시간 가이드
  factory GuideDialog.travelTime() {
    return GuideDialog(
      title: StringRes.travelTimeOrNot.tr,
      description: StringRes.travelTimeGuideDescription.tr,
    );
  }

  /// 휴게시간 가이드 가이드
  factory GuideDialog.breakTime() {
    return GuideDialog(
      title: StringRes.breakTimeOrNot.tr,
      description: StringRes.breakTimeGuideDescription.tr,
    );
  }

  /// 식사 가이드 가이드
  factory GuideDialog.meal() {
    return GuideDialog(
      title: StringRes.mealPaidOrNot.tr,
      description: StringRes.mealGuideDescription.tr,
    );
  }

  /// 이동시간 가이드 노출
  static Future showTravelTime(BuildContext context) {
    return showCupertinoDialog(
      useRootNavigator: false,
      context: context,
      builder: (context) => GuideDialog.travelTime(),
    );
  }

  /// 휴게시간 가이드 노출
  static Future showBreakTime(BuildContext context) {
    return showDialog(
      useRootNavigator: false,
      context: context,
      builder: (context) => GuideDialog.breakTime(),
    );
  }

  /// 식비 노출
  static Future showMeal(BuildContext context) {
    return showDialog(
      useRootNavigator: false,
      context: context,
      builder: (context) => GuideDialog.meal(),
    );
  }
}
