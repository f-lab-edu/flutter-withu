import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/core/router/router.gr.dart';
import 'package:withu_app/feature/feature.dart';
import 'package:withu_app/feature/job_posting/domain/entities/list/job_postings_item_entity.dart';
import 'package:withu_app/gen/assets.gen.dart';
import 'package:withu_app/gen/colors.gen.dart';
import 'package:withu_app/shared/shared.dart';

/// 공고 목록 화면
@RoutePage()
class JobPostingsPage extends StatelessWidget {
  const JobPostingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<JobPostingsDeleteBloc>(create: (context) => getIt()),
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
    return PageRoot(
      isLoading: false,
      fab: FloatingActionButton(
        backgroundColor: ColorName.primary80,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {
          context.pushRoute(JobPostingFormRoute());
        },
        child: Assets.images.plus.svg(
          width: 30,
          height: 30,
        ),
      ),
      child: SafeArea(
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
            state.selectedTab?.value ?? JobPostingStatusType.inProgress;

        return IndexedStack(
          index: JobPostingStatusType.valuesWithoutNone.indexOf(selectedType),
          children: const [
            JobPostingsList<JobPostingsInProgressBloc>(),
            JobPostingsList<JobPostingsClosedBloc>(),
            JobPostingsList<JobPostingsDeleteBloc>(),
          ],
        );
      },
    );
  }
}

/// 공고 목록 - 리스트
class JobPostingsList<B extends JobPostingsBloc> extends StatefulWidget {
  const JobPostingsList({super.key});

  @override
  State<StatefulWidget> createState() => JobPostingsListState<B>();
}

class JobPostingsListState<B extends JobPostingsBloc>
    extends State<JobPostingsList> with AutomaticKeepAliveClientMixin {
  final PagingController<int, JobPostingsItemEntity> _pagingController =
      PagingController(
    firstPageKey: 0,
  );

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    _pagingController.addPageRequestListener(
      (pageKey) {
        context.read<B>().add(JobPostingsNextPaginated(page: pageKey));
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
            if (state.status.isSuccess) {
              final isLast = state.isLast;
              if (isLast) {
                _pagingController.appendLastPage(state.jobPostingItems);
              } else {
                final nextPageKey = (_pagingController.nextPageKey ?? 0) + 1;
                _pagingController.appendPage(state.jobPostingItems, nextPageKey);
              }
            }

            if (state.status.isRefresh) {
              _pagingController.refresh();
            }
          },
        ),
      ],
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<B>().add(JobPostingsRefreshed());
        },
        backgroundColor: ColorName.teritary,
        color: ColorName.primary,
        child: PagedListView<int, JobPostingsItemEntity>(
          pagingController: _pagingController,
          padding: const EdgeInsets.symmetric(vertical: 20),
          builderDelegate: PagedChildBuilderDelegate<JobPostingsItemEntity>(
            itemBuilder: (context, item, index) => JobPostingsItem(
              entity: item,
              onPressed: () async {
                final bool? result = await _navigate(
                  context: context,
                  entity: item,
                );

                if (result == true && context.mounted) {
                  context.read<B>().add(JobPostingsRefreshed());
                }
              },
            ),
            firstPageProgressIndicatorBuilder: (context) => _emptyView(),
            noItemsFoundIndicatorBuilder: (context) => _emptyView(),
          ),
        ),
      ),
    );
  }

  // Pull-to-Refresh
  Future<void> pullToRefresh() async {
    context.read<JobPostingsBloc>().add(JobPostingsRefreshed());
    _pagingController.refresh();
  }

  /// 페이지 비어있을 때.
  Widget _emptyView() {
    return Center(
      child: Text(
        StringRes.noSavedJobPosting.tr,
        style: context.textTheme.bodyMedium,
      ),
    );
  }

  /// 화면 이동 작업
  Future<bool?> _navigate({
    required BuildContext context,
    required JobPostingsItemEntity entity,
  }) {
    if (entity.status.isInProgress) {
      return context.router.push<bool>(
        JobPostingWorkersRoute(jobPostingId: entity.id),
      );
    }

    return context.router.push<bool>(
      JobPostingDetailRoute(jobPostingId: entity.id),
    );
  }
}
