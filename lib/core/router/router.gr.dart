// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:withu_app/feature/job_posting/presentation/pages/job_posting_detail_page.dart'
    as _i1;
import 'package:withu_app/feature/job_posting/presentation/pages/job_posting_form_page.dart'
    as _i2;
import 'package:withu_app/feature/job_posting/presentation/pages/job_posting_workers_page.dart'
    as _i3;
import 'package:withu_app/feature/job_posting/presentation/pages/job_postings_page.dart'
    as _i4;
import 'package:withu_app/feature/splash/presentation/pages/splash_page.dart'
    as _i5;

/// generated route for
/// [_i1.JobPostingDetailPage]
class JobPostingDetailRoute
    extends _i6.PageRouteInfo<JobPostingDetailRouteArgs> {
  JobPostingDetailRoute({
    _i7.Key? key,
    required String jobPostingId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          JobPostingDetailRoute.name,
          args: JobPostingDetailRouteArgs(
            key: key,
            jobPostingId: jobPostingId,
          ),
          initialChildren: children,
        );

  static const String name = 'JobPostingDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JobPostingDetailRouteArgs>();
      return _i1.JobPostingDetailPage(
        key: args.key,
        jobPostingId: args.jobPostingId,
      );
    },
  );
}

class JobPostingDetailRouteArgs {
  const JobPostingDetailRouteArgs({
    this.key,
    required this.jobPostingId,
  });

  final _i7.Key? key;

  final String jobPostingId;

  @override
  String toString() {
    return 'JobPostingDetailRouteArgs{key: $key, jobPostingId: $jobPostingId}';
  }
}

/// generated route for
/// [_i2.JobPostingFormPage]
class JobPostingFormRoute extends _i6.PageRouteInfo<JobPostingFormRouteArgs> {
  JobPostingFormRoute({
    _i7.Key? key,
    String? jobPostingId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          JobPostingFormRoute.name,
          args: JobPostingFormRouteArgs(
            key: key,
            jobPostingId: jobPostingId,
          ),
          initialChildren: children,
        );

  static const String name = 'JobPostingFormRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JobPostingFormRouteArgs>(
          orElse: () => const JobPostingFormRouteArgs());
      return _i2.JobPostingFormPage(
        key: args.key,
        jobPostingId: args.jobPostingId,
      );
    },
  );
}

class JobPostingFormRouteArgs {
  const JobPostingFormRouteArgs({
    this.key,
    this.jobPostingId,
  });

  final _i7.Key? key;

  final String? jobPostingId;

  @override
  String toString() {
    return 'JobPostingFormRouteArgs{key: $key, jobPostingId: $jobPostingId}';
  }
}

/// generated route for
/// [_i3.JobPostingWorkersPage]
class JobPostingWorkersRoute
    extends _i6.PageRouteInfo<JobPostingWorkersRouteArgs> {
  JobPostingWorkersRoute({
    _i7.Key? key,
    required String jobPostingId,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          JobPostingWorkersRoute.name,
          args: JobPostingWorkersRouteArgs(
            key: key,
            jobPostingId: jobPostingId,
          ),
          initialChildren: children,
        );

  static const String name = 'JobPostingWorkersRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JobPostingWorkersRouteArgs>();
      return _i3.JobPostingWorkersPage(
        key: args.key,
        jobPostingId: args.jobPostingId,
      );
    },
  );
}

class JobPostingWorkersRouteArgs {
  const JobPostingWorkersRouteArgs({
    this.key,
    required this.jobPostingId,
  });

  final _i7.Key? key;

  final String jobPostingId;

  @override
  String toString() {
    return 'JobPostingWorkersRouteArgs{key: $key, jobPostingId: $jobPostingId}';
  }
}

/// generated route for
/// [_i4.JobPostingsPage]
class JobPostingsRoute extends _i6.PageRouteInfo<void> {
  const JobPostingsRoute({List<_i6.PageRouteInfo>? children})
      : super(
          JobPostingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobPostingsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.JobPostingsPage();
    },
  );
}

/// generated route for
/// [_i5.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashPage();
    },
  );
}
