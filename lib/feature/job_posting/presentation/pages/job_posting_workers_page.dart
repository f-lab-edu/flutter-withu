import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/core/router/router.gr.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/feature/job_posting/presentation/blocs/workers/job_posting_workers_bloc.dart';
import 'package:withu_app/feature/user/presentation/presentation.dart';
import 'package:withu_app/shared/shared.dart';

import '../widgets/worker_profile/worker_profile.dart';

/// 공고 상세 화면
@RoutePage()
class JobPostingWorkersPage extends StatelessWidget {
  final String jobPostingId;

  const JobPostingWorkersPage({
    super.key,
    required this.jobPostingId,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<JobPostingWorkersBloc>(
            create: (context) =>
                getIt()..add(JobPostingWorkersIdStored(id: jobPostingId))),
      ],
      child: _JobPostingWorkersPage(),
    );
  }
}

class _JobPostingWorkersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobPostingWorkersBloc, JobPostingWorkersState>(
      listener: (context, state) async {
        if (state.message.isNotEmpty) {
          CustomAlertDialog.showContentAlert(
            context: context,
            content: state.message,
            closeCallback: () {
              context
                  .read<JobPostingWorkersBloc>()
                  .add(JobPostingWorkersMessageCleared());
            },
          );
        }

        /// 공고 상세로 이동
        if (state.status.isDetail) {
          final String? jobPostingId = state.jobPostingId;

          if (jobPostingId != null) {
            await context.router.push(
              JobPostingDetailRoute(jobPostingId: jobPostingId),
            );
          }

          context
              .read<JobPostingWorkersBloc>()
              .add(JobPostingWorkersDetailPopped());
        }
      },
      builder: (context, state) {
        return PageRoot(
          isLoading: state.status.isLoading,
          safeAreaTop: false,
          appBar: CustomAppBar.back(
            context: context,
            trailing: [
              TextButton(
                onPressed: () {
                  context
                      .read<JobPostingWorkersBloc>()
                      .add(JobPostingWorkersDetailPressed());
                },
                child: Text(
                  StringRes.showJobPosting.tr,
                  style: context.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          child: NestedScrollView(
            headerSliverBuilder: (
              BuildContext context,
              bool innerBoxIsScrolled,
            ) {
              return [
                _Header(
                  title: state.title,
                  workPeriod: state.workPeriod,
                  workStatus: state.workStatus,
                ),
              ];
            },
            body: _WorkerList(),
          ),
        );
      },
    );
  }
}

/// 헤더 영역
class _Header extends StatelessWidget {
  /// 공고 제목
  final String title;

  /// 근무 기간
  final String workPeriod;

  /// 출근현황
  final String workStatus;

  const _Header({
    required this.title,
    required this.workPeriod,
    required this.workStatus,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.textTheme.headlineMedium,
                    ),
                    Text(
                      workPeriod,
                      style: context.textTheme.bodyMedium,
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '${StringRes.workStatus.tr} $workStatus',
                  style: context.textTheme.bodyMediumBold,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/// List
class _WorkerList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WorkerListState();
}

class _WorkerListState extends State<_WorkerList> {
  final PagingController<int, JobPostingWorkerEntity> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener(
      (pageKey) {
        context.read<JobPostingWorkersBloc>().add(
              JobPostingWorkersSearched(
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
    return BlocListener<JobPostingWorkersBloc, JobPostingWorkersState>(
      listener: (context, state) {
        if (state.status == JobPostingWorkersStatus.success) {
          final isLast = state.isLast;
          if (isLast) {
            _pagingController.appendLastPage(state.list);
          } else {
            final nextPageKey = (_pagingController.nextPageKey ?? 0) + 1;
            _pagingController.appendPage(state.list, nextPageKey);
          }
        }
      },
      child: PagedGridView<int, JobPostingWorkerEntity>(
        pagingController: _pagingController,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
        builderDelegate: PagedChildBuilderDelegate<JobPostingWorkerEntity>(
          firstPageProgressIndicatorBuilder: (context) => _emptyView(),
          noItemsFoundIndicatorBuilder: (context) => _emptyView(),
          itemBuilder: (context, item, index) {
            final userInfo = item.userInfo;
            return WorkerProfile(
              profile: userInfo.profile,
              name: userInfo.name,
              age: userInfo.age,
              startTime: item.workStartTime?.format('HH:mm') ?? '',
              endTime: item.workEndTime?.format('HH:mm') ?? '',
              workStatus: item.workStatus,
            );
          },
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 150 / 198,
        ),
      ),
    );
  }

  /// 페이지 비어있을 때.
  Widget _emptyView() {
    return Center(
      child: Text(
        StringRes.noApplicants.tr,
        style: context.textTheme.bodyMedium,
      ),
    );
  }
}
