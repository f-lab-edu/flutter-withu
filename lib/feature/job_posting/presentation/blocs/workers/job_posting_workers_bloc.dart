import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

part 'job_posting_workers_event.dart';

part 'job_posting_workers_state.dart';

part 'job_posting_workers_bloc.freezed.dart';

class JobPostingWorkersBloc
    extends Bloc<JobPostingWorkersEvent, JobPostingWorkersState> {
  final JobPostingUseCase useCase;

  JobPostingWorkersBloc({required this.useCase})
      : super(
          JobPostingWorkersState(
            status: JobPostingWorkersStatus.initial,
            message: '',
            title: '',
            participants: 0,
            workStartDate: '',
            workEndDate: '',
            list: [],
            isLast: true,
          ),
        ) {
    on<JobPostingWorkersIdStored>(_onIdStored);
    on<JobPostingWorkersInitialized>(_onInitialized);
  }
}

extension JobPostingWorkersBlocHandler on JobPostingWorkersBloc {
  /// Id 저장
  void _onIdStored(
    JobPostingWorkersIdStored event,
    Emitter<JobPostingWorkersState> emit,
  ) {
    emit(state.copyWith(jobPostingId: event.id));
  }

  /// 초기화 작업
  void _onInitialized(
    JobPostingWorkersInitialized event,
    Emitter<JobPostingWorkersState> emit,
  ) async {
    final jobPostingId = state.jobPostingId;

    if (jobPostingId == null) {
      return;
    }

    emit(state.copyWith(status: JobPostingWorkersStatus.loading));

    final Either<JobPostingWorkersEntity> result =
        await useCase.searchJobPostingWorkers(
      jobPostingId: jobPostingId,
      page: 0,
    );

    result.when(success: (JobPostingWorkersEntity data) {
      emit(state.copyWith(
        status: JobPostingWorkersStatus.loaded,
        title: data.title,
        participants: data.participants,
        workStartDate: data.workStartDate.format('yyyy-MM-dd'),
        workEndDate: data.workEndDate.format('yyyy-MM-dd'),
        list: data.workers,
        message: '',
      ));
    }, fail: (String message) {
      emit(state.copyWith(
        status: JobPostingWorkersStatus.failure,
        message: message,
      ));
    });
  }
}
