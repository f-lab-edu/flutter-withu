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
              style: context.textTheme.bodySmall,
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
    return const Text(
      '임시저장',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorName.primary,
        height: 19.2 / 12,
        letterSpacing: -0.5,
      ),
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
        const Text(
          '모집인원',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: ColorName.primary,
            height: 19.2 / 12,
            letterSpacing: -0.5,
          ),
        ),
        Text(
          counter,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: ColorName.primary,
            height: 28.8 / 18,
            letterSpacing: -0.5,
          ),
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
    return const Text(
      '모집마감',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorName.primary,
        height: 19.2 / 12,
        letterSpacing: -0.5,
      ),
    );
  }
}
