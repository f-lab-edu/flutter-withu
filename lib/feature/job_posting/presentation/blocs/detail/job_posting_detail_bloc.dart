import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

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
    on<OnPressedUpdate>(_onPressedUpdate);
    on<OnPopForm>(_onPopForm);
    on<JobPostingDetailRefreshed>(_onRefreshed);
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
    await _fetchData(
      jobPostingId: event.id,
      emit: emit,
    );
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

    final Either<JobPostingDetailEntity> result = await useCase.closeJobPosting(
      jobPostingId: jobPostingId,
    );

    result.when(
      success: (JobPostingDetailEntity data) {
        emit(
          state.copyWith(
            status: JobPostingDetailStatus.close,
          ),
        );
      },
      fail: (String message) {
        emit(
          state.copyWith(
            status: JobPostingDetailStatus.failure,
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
          state.copyWith(
            status: JobPostingDetailStatus.delete,
          ),
        );
      },
      fail: (String message) {
        emit(
          state.copyWith(
            status: JobPostingDetailStatus.failure,
            message: message,
          ),
        );
      },
    );
  }

  /// 수정 클릭 이벤트
  void _onPressedUpdate(
    OnPressedUpdate event,
    Emitter<JobPostingDetailState> emit,
  ) {
    emit(state.copyWith(status: JobPostingDetailStatus.update));
  }

  /// 수정화면에서 돌아왔을 때 이벤트.
  void _onPopForm(
    OnPopForm event,
    Emitter<JobPostingDetailState> emit,
  ) {
    emit(state.copyWith(status: JobPostingDetailStatus.success));
  }

  /// 리프레시
  void _onRefreshed(
    JobPostingDetailRefreshed event,
    Emitter<JobPostingDetailState> emit,
  ) async {
    final jobPostingId = state.entity?.id;
    if (jobPostingId == null) {
      return;
    }

    await _fetchData(
      jobPostingId: jobPostingId,
      emit: emit,
    );
  }

  /// 공고 상세 조회
  Future _fetchData({
    required String jobPostingId,
    required Emitter<JobPostingDetailState> emit,
  }) async {
    emit(state.copyWith(status: JobPostingDetailStatus.loading));

    final Either<JobPostingDetailEntity> result = await useCase.getJobPosting(
      jobPostingId: jobPostingId,
    );

    result.when(success: (JobPostingDetailEntity data) {
      emit(state.copyWith(
        status: JobPostingDetailStatus.success,
        entity: data,
        message: '',
      ));
    }, fail: (String message) {
      emit(state.copyWith(
        status: JobPostingDetailStatus.failure,
        entity: null,
        message: message,
      ));
    });
  }
}
