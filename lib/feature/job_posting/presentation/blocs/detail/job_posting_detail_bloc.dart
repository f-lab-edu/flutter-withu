import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/feature/job_posting/domain/entities/job_posting_detail_entity.dart';

part 'job_posting_detail_event.dart';

part 'job_posting_detail_state.dart';

part 'job_posting_detail_bloc.freezed.dart';

class JobPostingDetailBloc
    extends Bloc<JobPostingDetailEvent, JobPostingDetailState> {
  final JobPostingUseCase useCase;

  JobPostingDetailBloc({required this.useCase})
      : super(JobPostingDetailState(
          status: JobPostingDetailStatus.initial,
          message: '',
        )) {
    on<ClearMessage>(_clearMessage);
    on<OnGettingDetailData>(_onGettingDetailData);
    on<OnClosedJobPosting>(_onClosedJobPosting);
    on<OnDeletedJobPosting>(_onDeletedJobPosting);
  }

  /// 메시지 초기화 이벤트.
  void _clearMessage(
    ClearMessage event,
    Emitter<JobPostingDetailState> emit,
  ) {
    emit(state.copyWith(message: ''));
  }

  /// 상세 API 조회
  void _onGettingDetailData(
    OnGettingDetailData event,
    Emitter<JobPostingDetailState> emit,
  ) async {
    emit(state.copyWith(status: JobPostingDetailStatus.loading));

    final Either<JobPostingDetailEntity> result = await useCase.get(
      jobPostingId: event.id,
    );

    result.when(success: (JobPostingDetailEntity data) {
      emit(state.copyWith(
        status: JobPostingDetailStatus.success,
        entity: data,
        message: '',
      ));
    }, fail: (String message) {
      emit(state.copyWith(
        status: JobPostingDetailStatus.fail,
        entity: null,
        message: message,
      ));
    });
  }

  /// 공고 마감
  void _onClosedJobPosting(
    OnClosedJobPosting event,
    Emitter<JobPostingDetailState> emit,
  ) async {
    final String? jobPostingId = state.entity?.id;

    if (jobPostingId == null) {
      return;
    }

    emit(state.copyWith(status: JobPostingDetailStatus.loading));

    final Either<JobPostingDetailEntity> result = await useCase.close(
      jobPostingId: jobPostingId,
    );

    result.when(
      success: (JobPostingDetailEntity data) {
        emit(
          state.copyWith(
            status: JobPostingDetailStatus.closed,
          ),
        );
      },
      fail: (String message) {
        emit(
          state.copyWith(
            status: JobPostingDetailStatus.fail,
            entity: null,
            message: message,
          ),
        );
      },
    );
  }

  /// 공고 삭제
  void _onDeletedJobPosting(
    OnDeletedJobPosting event,
    Emitter<JobPostingDetailState> emit,
  ) async {
    final String? jobPostingId = state.entity?.id;

    if (jobPostingId == null) {
      return;
    }

    emit(state.copyWith(status: JobPostingDetailStatus.loading));

    final Either<bool> result = await useCase.deleteJobPosting(
      jobPostingId: jobPostingId,
    );

    result.when(
      success: (bool data) {
        emit(
          state.copyWith(status: JobPostingDetailStatus.deleted),
        );
      },
      fail: (String message) {
        emit(
          state.copyWith(
            status: JobPostingDetailStatus.fail,
            message: message,
          ),
        );
      },
    );
  }
}
