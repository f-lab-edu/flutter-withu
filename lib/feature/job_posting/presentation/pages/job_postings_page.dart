import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
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
              _JobPostingsTabs(),
              Expanded(
                child: _JobPostingList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 공고 목록 탭
class _JobPostingsTabs extends StatelessWidget {
  const _JobPostingsTabs();

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

/// 공고 목록 - 리스트
class _JobPostingList extends StatefulWidget {
  const _JobPostingList();

  @override
  State<StatefulWidget> createState() => _JobPostingsListState();
}

class _JobPostingsListState extends State<_JobPostingList> {
  /// 페이지 컨트롤러
  final PagingController<int, JobPostingEntity> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<JobPostingBloc>().add(OnGettingListEvent());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobPostingBloc, JobPostingState>(
      listener: (context, state) {
        if (state.status == JobPostingStatus.success) {
          final isLast = state.isLast;
          if (isLast) {
            _pagingController.appendLastPage(state.list);
          } else {
            final nextPageKey = (_pagingController.nextPageKey ?? 0) + 1;
            _pagingController.appendPage(state.list, nextPageKey);
          }
        }
      },
      builder: (BuildContext context, state) {
        return PagedListView(
          pagingController: _pagingController,
          padding: const EdgeInsets.symmetric(vertical: 20),
          builderDelegate: PagedChildBuilderDelegate<JobPostingEntity>(
            itemBuilder: (context, item, index) => JobPostingsItem(
              entity: item,
            ),
          ),
        );
      },
    );
  }
}
