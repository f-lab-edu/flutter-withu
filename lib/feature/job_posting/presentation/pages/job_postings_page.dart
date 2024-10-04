import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/feature.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/shared/shared.dart';

@RoutePage()
class JobPostingsPage extends StatelessWidget {
  final List<BaseTabData> tabs = const [
    BaseTabData(text: '임시저장'),
    BaseTabData(text: '진행'),
    BaseTabData(text: '마감'),
  ];

  const JobPostingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<JobPostingBloc>(
          create: (context) => JobPostingBloc(
            useCase: getIt<JobPostingUseCase>(),
          ),
        ),
        BlocProvider<BaseTabBloc>(
          create: (context) => BaseTabBloc(tabs: tabs),
        ),
      ],
      child: _JobPostingsPage(),
    );
  }
}

class _JobPostingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Column(
            children: [
              SizedBox(height: 20),
              JobPostingsTabs(),
            ],
          ),
        ),
      ),
    );
  }
}

/// 공고 목록 탭
class JobPostingsTabs extends StatelessWidget {
  const JobPostingsTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseTabBloc, BaseTabState>(
      builder: (context, state) {
        return BaseTabs(
          tabs: state.tabs,
          selectedTab: state.selectedTab,
          onTap: (BaseTabData tab) {
            // 탭 선택 이벤트
            context.read<BaseTabBloc>().add(OnSelectTap(tab));

            // 목록 로딩 이벤트
            context.read<JobPostingBloc>().add(OnGettingListEvent());
          },
        );
      },
    );
  }
}
