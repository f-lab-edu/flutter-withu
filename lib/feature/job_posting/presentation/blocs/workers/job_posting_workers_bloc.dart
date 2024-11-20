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
            applicants: 0,
            participants: 0,
            workStartDate: '',
            workEndDate: '',
            list: [],
            isLast: true,
          ),
        ) {
    on<JobPostingWorkersIdStored>(_onIdStored);
    on<JobPostingWorkersSearched>(_onSearched);
    on<JobPostingWorkersMessageCleared>(_onMessageCleared);
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
  void _onSearched(
    JobPostingWorkersSearched event,
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
      page: event.page,
    );

    result.when(success: (JobPostingWorkersEntity data) {
      emit(state.copyWith(
        status: JobPostingWorkersStatus.success,
        title: data.title,
        applicants: data.applicants,
        participants: data.participants,
        workStartDate: data.workStartDate.format('yy / MM / dd (E)'),
        workEndDate: data.workEndDate.format('yy / MM / dd (E)'),
        list: data.workers,
        isLast: data.workers.length < 10,
        message: '',
      ));
    }, fail: (String message) {
      emit(state.copyWith(
        status: JobPostingWorkersStatus.failure,
        message: message,
      ));
    });
  }

  /// 메시지 초기화
  void _onMessageCleared(
    JobPostingWorkersMessageCleared event,
    Emitter<JobPostingWorkersState> emit,
  ) {
    emit(state.copyWith(message: ''));
  }
}
