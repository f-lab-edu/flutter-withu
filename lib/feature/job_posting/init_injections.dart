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
  getIt.registerFactory<JobPostingsTemporaryBloc>(
    () => JobPostingsTemporaryBloc(useCase: getIt()),
  );
  getIt.registerFactory<JobPostingsInProgressBloc>(
    () => JobPostingsInProgressBloc(useCase: getIt()),
  );
  getIt.registerFactory<JobPostingsClosedBloc>(
    () => JobPostingsClosedBloc(useCase: getIt()),
  );
  getIt.registerFactory<JobPostingsTabBloc>(
    () => JobPostingsTabBloc(),
  );
}
