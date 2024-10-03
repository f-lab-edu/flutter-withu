import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/feature/job_posting/job_posting.dart';

initJobPostingInjections() {
  getIt.registerSingleton<JobPostingApi>(
    JobPostingApiImpl(),
  );
  getIt.registerSingleton<JobPostingRepository>(
    JobPostingRepositoryImpl(api: getIt()),
  );
  getIt.registerSingleton<JobPostingUseCase>(
    JobPostingUseCaseImpl(repository: getIt()),
  );
  getIt.registerFactory<JobPostingBloc>(
    () => JobPostingBloc(useCase: getIt()),
  );
}
