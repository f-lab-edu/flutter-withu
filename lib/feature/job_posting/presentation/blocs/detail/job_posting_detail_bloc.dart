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
        )) {
    on<OnGettingDetailData>(_onGettingDetailData);
  }

  /// 상세 API 조회
  void _onGettingDetailData(
    OnGettingDetailData event,
    Emitter<JobPostingDetailState> emit,
  ) async {
    emit(state.copyWith(status: JobPostingDetailStatus.loading));

    final Either<JobPostingDetailEntity> result =
        await useCase.getJobPosting(jobPostingId: event.id);

    result.when(success: (JobPostingDetailEntity data) {
      emit(state.copyWith(
        status: JobPostingDetailStatus.success,
        entity: data,
      ));
    }, fail: (String message) {
      emit(state.copyWith(
        status: JobPostingDetailStatus.fail,
        entity: null,
      ));
    });
  }
}
