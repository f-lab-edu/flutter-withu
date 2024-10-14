import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/shared/shared.dart';

/// 공고 등록/수정 화면
@RoutePage()
class JobPostingFormPage extends StatefulWidget {
  const JobPostingFormPage({super.key});

  @override
  State<StatefulWidget> createState() => _JobPostingFormPageState();
}

class _JobPostingFormPageState extends State<JobPostingFormPage> {
  /// 제목 컨트롤러.
  final TextEditingController titleController = TextEditingController();

  /// 근로 내용 컨트롤러.
  final TextEditingController workDetailController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageRoot(
      appBar: CustomAppBar.back(
        context: context,
        trailing: [
          TextButton(
            onPressed: () {
              logger.i('임시저장 클릭');
            },
            child: Text(
              StringRes.temporarySave.tr,
              style: context.textTheme.bodyMedium,
            ),
          )
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            BaseInput(
              controller: titleController,
              style: context.textTheme.headlineSmall,
              hintText: StringRes.enterTitle.tr,
              hintTextStyle: context.textTheme.headlineSmall,
              padding: const EdgeInsets.fromLTRB(12, 11, 12, 0),
            ),
            const SizedBox(height: 30),
            _FieldName(text: StringRes.workDetail.tr),
            const SizedBox(height: 18),
            BaseInput(
              controller: workDetailController,
              style: context.textTheme.headlineSmall,
              hintText: StringRes.enterDescriptionOfJobPosting.tr,
              hintTextStyle: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: 30),
            _FieldName(text: StringRes.selectCategory.tr),
            const SizedBox(height: 15),
            _CategorySelect(),
            const SizedBox(height: 30),
            _PeriodType(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

/// 필드명.
class _FieldName extends StatelessWidget {
  final String text;

  const _FieldName({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.bodyMediumBold,
    );
  }
}

/// 카테고리 선택
class _CategorySelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: JobCategoryType.values
          .map(
            (category) => RadioChip(
              text: category.tr,
              isSelected: true,
              onSelected: () {},
              margin: const EdgeInsets.only(right: 13),
            ),
          )
          .toList(),
    );
  }
}

/// 기간형식
class _PeriodType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _FieldName(text: StringRes.periodFormat.tr),
        const Spacer(),
        ...WorkPeriodType.values.map(
          (type) => RadioChip(
            text: type.tr,
            isSelected: true,
            onSelected: () {},
            margin: const EdgeInsets.only(left: 16),
          ),
        ),
      ],
    );
  }
}
