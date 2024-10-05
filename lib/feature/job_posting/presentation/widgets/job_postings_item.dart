import 'package:flutter/material.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/gen/colors.gen.dart';
import 'package:withu_app/shared/shared.dart';

/// 공고 목록 아이템
class JobPostingsItem extends StatelessWidget {
  final JobPostingEntity entity;

  const JobPostingsItem({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorName.teritary,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: _Information(entity: entity),
          ),
          _RightView(entity: entity),
        ],
      ),
    );
  }
}

class _Information extends StatelessWidget {
  final JobPostingEntity entity;

  const _Information({required this.entity});

  String get _date => _getDisplayDate();

  /// 표시 날짜 얻기.
  String _getDisplayDate() {
    const String format = 'yy.MM.dd(E)';
    String result = entity.startDate.format(format);

    if (entity.endDate != null) {
      result += ' - ${entity.endDate?.format(format)}';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BaseBadge(
              text: entity.category.displayName,
              textStyle: context.textTheme.bodySmall,
              backgroundColor: ColorName.teritary,
            ),
            const SizedBox(width: 8),
            Text(
              entity.title,
              style: context.textTheme.headlineSmall,
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          _date,
          textAlign: TextAlign.start,
          style: context.textTheme.bodyMedium,
        ),
      ],
    );
  }
}

class _RightView extends StatelessWidget {
  final JobPostingEntity entity;

  const _RightView({required this.entity});

  @override
  Widget build(BuildContext context) {
    switch (entity.status) {
      case JobPostingStatusType.temporary:
        return const _TemporaryView();
      case JobPostingStatusType.inProgress:
        return _InProgressView(
          max: entity.max,
          current: entity.current,
        );
      case JobPostingStatusType.closed:
        return const _ClosedView();
    }
  }
}

/// 임시저장
class _TemporaryView extends StatelessWidget {
  const _TemporaryView();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringRes.temporarySave.tr,
      style: context.textTheme.bodySmall,
    );
  }
}

/// 진행 - 모집 인원
class _InProgressView extends StatelessWidget {
  /// 최대 인원
  final int max;

  /// 현재 인원
  final int current;

  /// 현재 / 최대
  String get counter => '$current/$max';

  const _InProgressView({
    required this.max,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          StringRes.numberOfRecruits.tr,
          style: context.textTheme.bodySmall,
        ),
        Text(
          counter,
          style: context.textTheme.headlineSmall,
        ),
      ],
    );
  }
}

/// 마감
class _ClosedView extends StatelessWidget {
  const _ClosedView();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringRes.closed.tr,
      style: context.textTheme.bodySmall,
    );
  }
}
