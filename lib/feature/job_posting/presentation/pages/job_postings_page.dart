import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:withu_app/feature/job_posting/presentation/blocs/job_posting_bloc.dart';

@RoutePage()
class JobPostingsPage extends StatelessWidget {
  const JobPostingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<JobPostingBloc>(),
      child: _JobPostingsPage(),
    );
  }
}

class _JobPostingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('공고목록화면'),
    );
  }
}
