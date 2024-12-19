// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:withu_app/feature/account/presentation/page/find_account/find_account_page.dart'
    as _i1;
import 'package:withu_app/feature/account/presentation/page/login/login_page.dart'
    as _i6;
import 'package:withu_app/feature/account/presentation/page/sign_up/sign_up_page.dart'
    as _i7;
import 'package:withu_app/feature/job_posting/presentation/pages/job_posting_detail_page.dart'
    as _i2;
import 'package:withu_app/feature/job_posting/presentation/pages/job_posting_form_page.dart'
    as _i3;
import 'package:withu_app/feature/job_posting/presentation/pages/job_posting_workers_page.dart'
    as _i4;
import 'package:withu_app/feature/job_posting/presentation/pages/job_postings_page.dart'
    as _i5;
import 'package:withu_app/feature/splash/presentation/pages/splash_page.dart'
    as _i8;

/// generated route for
/// [_i1.FindAccountPage]
class FindAccountRoute extends _i9.PageRouteInfo<void> {
  const FindAccountRoute({List<_i9.PageRouteInfo>? children})
      : super(
          FindAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'FindAccountRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.FindAccountPage();
    },
  );
}

/// generated route for
/// [_i2.JobPostingDetailPage]
class JobPostingDetailRoute
    extends _i9.PageRouteInfo<JobPostingDetailRouteArgs> {
  JobPostingDetailRoute({
    _i10.Key? key,
    required String jobPostingId,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          JobPostingDetailRoute.name,
          args: JobPostingDetailRouteArgs(
            key: key,
            jobPostingId: jobPostingId,
          ),
          initialChildren: children,
        );

  static const String name = 'JobPostingDetailRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JobPostingDetailRouteArgs>();
      return _i2.JobPostingDetailPage(
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

  final _i10.Key? key;

  final String jobPostingId;

  @override
  String toString() {
    return 'JobPostingDetailRouteArgs{key: $key, jobPostingId: $jobPostingId}';
  }
}

/// generated route for
/// [_i3.JobPostingFormPage]
class JobPostingFormRoute extends _i9.PageRouteInfo<JobPostingFormRouteArgs> {
  JobPostingFormRoute({
    _i10.Key? key,
    String? jobPostingId,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          JobPostingFormRoute.name,
          args: JobPostingFormRouteArgs(
            key: key,
            jobPostingId: jobPostingId,
          ),
          initialChildren: children,
        );

  static const String name = 'JobPostingFormRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JobPostingFormRouteArgs>(
          orElse: () => const JobPostingFormRouteArgs());
      return _i3.JobPostingFormPage(
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

  final _i10.Key? key;

  final String? jobPostingId;

  @override
  String toString() {
    return 'JobPostingFormRouteArgs{key: $key, jobPostingId: $jobPostingId}';
  }
}

/// generated route for
/// [_i4.JobPostingWorkersPage]
class JobPostingWorkersRoute
    extends _i9.PageRouteInfo<JobPostingWorkersRouteArgs> {
  JobPostingWorkersRoute({
    _i10.Key? key,
    required String jobPostingId,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          JobPostingWorkersRoute.name,
          args: JobPostingWorkersRouteArgs(
            key: key,
            jobPostingId: jobPostingId,
          ),
          initialChildren: children,
        );

  static const String name = 'JobPostingWorkersRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<JobPostingWorkersRouteArgs>();
      return _i4.JobPostingWorkersPage(
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

  final _i10.Key? key;

  final String jobPostingId;

  @override
  String toString() {
    return 'JobPostingWorkersRouteArgs{key: $key, jobPostingId: $jobPostingId}';
  }
}

/// generated route for
/// [_i5.JobPostingsPage]
class JobPostingsRoute extends _i9.PageRouteInfo<void> {
  const JobPostingsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          JobPostingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'JobPostingsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.JobPostingsPage();
    },
  );
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.LoginPage();
    },
  );
}

/// generated route for
/// [_i7.SignUpPage]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.SignUpPage();
    },
  );
}

/// generated route for
/// [_i8.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.SplashPage();
    },
  );
}
