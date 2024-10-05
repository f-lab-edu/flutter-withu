import 'package:flutter/material.dart';
import 'package:withu_app/core/type/job_category.dart';
import 'package:withu_app/core/utils/extensions/date_ex.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
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
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: _Information(
              title: entity.title,
              category: entity.category,
              startDate: entity.startDate,
              endDate: entity.endDate,
            ),
          ),
          _RecruitmentCounter(
            max: entity.max,
            current: entity.current,
          ),
        ],
      ),
    );
  }
}

class _Information extends StatelessWidget {
  final JobCategory category;

  final String title;

  final DateTime startDate;

  final DateTime? endDate;

  String get _date => _getDisplayDate();

  const _Information({
    required this.category,
    required this.title,
    required this.startDate,
    this.endDate,
  });

  /// 표시 날짜 얻기.
  String _getDisplayDate() {
    const String format = 'yy.MM.dd(E)';
    String result = startDate.format(format);

    if (endDate != null) {
      result += ' - ${endDate?.format(format)}';
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
              text: category.displayName,
              textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                height: 19.2 / 12,
              ),
              backgroundColor: Colors.green,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.black,
                height: 28.8 / 18,
                letterSpacing: -0.5,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          _date,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            height: 22.4 / 14,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}

/// 모집인원
class _RecruitmentCounter extends StatelessWidget {
  /// 최대 인원
  final int max;

  /// 현재 인원
  final int current;

  /// 현재 / 최대
  String get counter => '$current/$max';

  const _RecruitmentCounter({
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
            height: 19.2 / 12,
            letterSpacing: -0.5,
          ),
        ),
        Text(
          counter,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 28.8 / 18,
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}
