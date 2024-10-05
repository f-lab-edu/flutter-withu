import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/feature.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/shared/shared.dart';

/// 공고 목록 화면
@RoutePage()
class JobPostingsPage extends StatelessWidget {
  const JobPostingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<JobPostingsTemporaryBloc>(create: (context) => getIt()),
        BlocProvider<JobPostingsInProgressBloc>(create: (context) => getIt()),
        BlocProvider<JobPostingsClosedBloc>(create: (context) => getIt()),
        BlocProvider<JobPostingsTabBloc>(create: (context) => getIt()),
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
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: const Column(
            children: [
              SizedBox(height: 20),
              _JobPostingsTabs(),
              Expanded(child: JobPostingsListPage()),
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
    return BlocBuilder<JobPostingsTabBloc, BaseTabState>(
      builder: (context, state) {
        return BaseTabs(
          tabs: state.tabs,
          selectedTab: state.selectedTab ?? state.tabs.first,
          onTap: (BaseTabData tab) {
            context.read<JobPostingsTabBloc>().add(OnSelectTap(tab));
          },
        );
      },
    );
  }
}

/// 공고 목록 페이지
class JobPostingsListPage extends StatelessWidget {
  const JobPostingsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobPostingsTabBloc, BaseTabState>(
      builder: (context, state) {
        final selectedType =
            state.selectedTab?.value ?? JobPostingStatusType.temporary;

        return IndexedStack(
          index: JobPostingStatusType.values.indexOf(selectedType),
          children: const [
            JobPostingsList<JobPostingsTemporaryBloc>(
              type: JobPostingStatusType.temporary,
            ),
            JobPostingsList<JobPostingsInProgressBloc>(
              type: JobPostingStatusType.inProgress,
            ),
            JobPostingsList<JobPostingsClosedBloc>(
              type: JobPostingStatusType.closed,
            ),
          ],
        );
      },
    );
  }
}

/// 공고 목록 - 리스트
class JobPostingsList<B extends JobPostingsBloc> extends StatefulWidget {
  final JobPostingStatusType type;

  const JobPostingsList({
    super.key,
    required this.type,
  });

  @override
  State<StatefulWidget> createState() => JobPostingsListState<B>();
}

class JobPostingsListState<B extends JobPostingsBloc>
    extends State<JobPostingsList> with AutomaticKeepAliveClientMixin {
  final PagingController<int, JobPostingEntity> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    _pagingController.addPageRequestListener(
      (pageKey) {
        context.read<B>().add(
              OnGettingListEvent(
                type: widget.type,
                page: pageKey,
              ),
            );
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<B, JobPostingState>(
          listener: (context, state) {
            if (state.status == JobPostingsStatus.success) {
              final isLast = state.isLast;
              if (isLast) {
                _pagingController.appendLastPage(state.list);
              } else {
                final nextPageKey = (_pagingController.nextPageKey ?? 0) + 1;
                _pagingController.appendPage(state.list, nextPageKey);
              }
            }
          },
        ),
      ],
      child: PagedListView<int, JobPostingEntity>(
        pagingController: _pagingController,
        padding: const EdgeInsets.symmetric(vertical: 20),
        builderDelegate: PagedChildBuilderDelegate<JobPostingEntity>(
          itemBuilder: (context, item, index) => JobPostingsItem(
            entity: item,
          ),
        ),
      ),
    );
  }
}
