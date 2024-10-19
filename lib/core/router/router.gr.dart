// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:withu_app/feature/job_posting/presentation/pages/job_posting_detail_page.dart'
    as _i1;
import 'package:withu_app/feature/job_posting/presentation/pages/job_posting_form_page.dart'
    as _i2;
import 'package:withu_app/feature/job_posting/presentation/pages/job_postings_page.dart'
    as _i3;
import 'package:withu_app/feature/splash/presentation/pages/splash_page.dart'
    as _i4;

/// generated route for
/// [_i1.JobPostingDetailPage]
class JobPostingDetailRoute
    extends _i5.PageRouteInfo<JobPostingDetailRouteArgs> {
  JobPostingDetailRoute({
    _i6.Key? key,
    required String jobPostingId,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          JobPostingDetailRoute.name,
          args: JobPostingDetailRouteArgs(
            key: key,
            jobPostingId: jobPostingId,
          ),
          initialChildren: children,
        );

  static const String name = 'JobPostingDetailRoute';

  static _i5.PageInfo page = _i5.PageInfo(
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

  final _i6.Key? key;

  final String jobPostingId;

  @override
  String toString() {
    return 'JobPostingDetailRouteArgs{key: $key, jobPostingId: $jobPostingId}';
  }
}

/// generated route for
/// [_i2.JobPostingFormPage]
class JobPostingFormRoute extends _i5.PageRouteInfo<void> {
  const JobPostingFormRoute({List<_i5.PageRouteInfo>? children})
      : super(
          JobPostingFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobPostingFormRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.JobPostingFormPage();
    },
  );
}

/// generated route for
/// [_i3.JobPostingsPage]
class JobPostingsRoute extends _i5.PageRouteInfo<void> {
  const JobPostingsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          JobPostingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobPostingsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.JobPostingsPage();
    },
  );
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SplashPage();
    },
  );
}
