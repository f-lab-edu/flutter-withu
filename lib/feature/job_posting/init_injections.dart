
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/job_posting.dart';

initJobPostingInjections() {
  getIt.registerCachedFactory(() => JobPostingBloc());
}
