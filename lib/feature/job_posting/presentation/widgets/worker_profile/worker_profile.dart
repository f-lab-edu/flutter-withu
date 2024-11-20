import 'package:flutter/cupertino.dart';
import 'package:withu_app/core/utils/utils.dart';
import 'package:withu_app/feature/user/presentation/presentation.dart';
import 'package:withu_app/gen/colors.gen.dart';
import 'package:withu_app/shared/shared.dart';

/// 근로자 프로필
class WorkerProfile extends StatelessWidget {
  /// 프로필 이미지 URL
  final String profile;

  /// 이름
  final String name;

  /// 나이
  final int age;

  /// 출근 시간
  final String startTime;

  /// 퇴근시간
  final String endTime;

  /// 출근여부
  final bool workStatus;

  const WorkerProfile({
    super.key,
    required this.profile,
    required this.name,
    required this.age,
    required this.startTime,
    required this.endTime,
    required this.workStatus,
  });

  @override
  Widget build(BuildContext context) {
    final String badgeText = workStatus
        ? StringRes.attendanceScheduled.tr
        : StringRes.attendanceCompleted.tr;

    final Color badgeColor =
        workStatus ? ColorName.annotations : ColorName.teritary;
    return Column(
      children: [
        Stack(
          children: [
            UserProfile(
              profile: profile,
              name: name,
              age: age,
            ),
            Positioned(
              top: 5,
              right: 5,
              child: BaseBadge(
                text: badgeText,
                textStyle: context.textTheme.bodySmall,
                backgroundColor: badgeColor,
              ),
            ),
          ],
        ),
        _WorkTime(
          startTime: startTime,
          endTime: endTime,
        ),
      ],
    );
  }
}

class _WorkTime extends StatelessWidget {
  final String startTime;
  final String endTime;

  const _WorkTime({
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          Text(
            StringRes.attendance.tr,
            style: context.textTheme.bodySmall,
          ),
          Expanded(
            child: Text(
              startTime.isEmpty ? '' : ' - $startTime',
              style: context.textTheme.bodySmall,
            ),
          ),
          Text(
            StringRes.leaveWork.tr,
            style: context.textTheme.bodySmall,
          ),
          Expanded(
            child: Text(
              endTime.isEmpty ? '' : ' - $endTime',
              style: context.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
