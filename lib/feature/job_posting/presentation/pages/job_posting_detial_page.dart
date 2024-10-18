import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/presentation/blocs/detail/job_posting_detail_bloc.dart';

/// 공고 상세 화면
@RoutePage()
class JobPostingDetailPage extends StatelessWidget {
  final String jobPostingId;

  const JobPostingDetailPage({
    super.key,
    required this.jobPostingId,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<JobPostingDetailBloc>(
          create: (context) => getIt()
            ..add(
              OnGettingDetailData(id: jobPostingId),
            ),
        ),
      ],
      child: _JobPostingDetailPage(),
    );
  }
}

class _JobPostingDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text('1');
  }
}
