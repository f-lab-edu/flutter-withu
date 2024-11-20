import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/data/data.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/feature/job_posting/job_posting.dart';
import 'package:withu_app/feature/job_posting/presentation/blocs/workers/job_posting_workers_bloc.dart';

initJobPostingInjections() {
  getIt.registerSingleton<JobPostingApi>(
    Environment.isProd ? JobPostingApiImpl() : JobPostingMockApi(),
  );
  getIt.registerSingleton<JobPostingRepository>(
    JobPostingRepositoryImpl(jobPostingApi: getIt()),
  );
  getIt.registerSingleton<JobPostingUseCase>(
    JobPostingUseCaseImpl(jobPostingRepo: getIt()),
  );
  getIt.registerFactory<JobPostingsTabBloc>(
        () => JobPostingsTabBloc(),
  );
  getIt.registerFactory<JobPostingsInProgressBloc>(
    () => JobPostingsInProgressBloc(useCase: getIt()),
  );
  getIt.registerFactory<JobPostingsClosedBloc>(
    () => JobPostingsClosedBloc(useCase: getIt()),
  );
  getIt.registerFactory<JobPostingsDeleteBloc>(
        () => JobPostingsDeleteBloc(useCase: getIt()),
  );
  getIt.registerFactory<JobPostingFormBloc>(
        () => JobPostingFormBloc(useCase: getIt()),
  );
  getIt.registerFactory<JobPostingDetailBloc>(
        () => JobPostingDetailBloc(useCase: getIt()),
  );
  getIt.registerFactory<JobPostingWorkersBloc>(
        () => JobPostingWorkersBloc(useCase: getIt()),
  );
}
