import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/shared/shared.dart';

/// 공고 등록/수정 화면
@RoutePage()
class JobPostingFormPage extends StatelessWidget {
  const JobPostingFormPage({super.key});

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
      child: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
