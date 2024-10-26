import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';
import 'package:withu_app/feature/job_posting/domain/entities/list/job_postings_item_entity.dart';
import 'package:withu_app/feature/job_posting/domain/entities/list/job_postings_entity.dart';

part 'job_postings_state.dart';

part 'job_postings_event.dart';

part 'job_postings_bloc.freezed.dart';

class JobPostingsBloc extends BaseBloc<JobPostingsEvent, JobPostingState> {
  final JobPostingStatusType status;
  final JobPostingUseCase useCase;

  JobPostingsBloc({
    required this.status,
    required this.useCase,
  }) : super(
          JobPostingState(status: BaseBlocStatus.initial()),
        ) {
    on<JobPostingsInitialized>(_onInitialized);
    on<JobPostingsNextPaginated>(_onNextPaginated);
    on<JobPostingsRefreshed>(_onRefreshed);
  }

  void _onInitialized(
    JobPostingsInitialized event,
    Emitter<JobPostingState> emit,
  ) async {
    await searchList(
      page: 0,
      emit: emit,
    );
  }

  void _onNextPaginated(
    JobPostingsNextPaginated event,
    Emitter<JobPostingState> emit,
  ) async {
    await searchList(
      page: event.page,
      emit: emit,
    );
  }

  void _onRefreshed(
    JobPostingsRefreshed event,
    Emitter<JobPostingState> emit,
  ) async {
    emit(state.copyWith(
      status: BaseBlocStatus.refresh(),
      isLast: false,
      list: [],
    ));
  }

  /// API: 공고 목록 조회
  Future<void> searchList({
    required int page,
    required Emitter<JobPostingState> emit,
  }) async {
    if (state.isLast) {
      return;
    }
    emit(state.copyWith(status: BaseBlocStatus.loading()));

    final Either<JobPostingsEntity> result = await useCase.searchJobPostings(
      status: status,
      page: page,
    );

    result.when(
      success: (JobPostingsEntity entity) {
        emit(
          state.copyWith(
            status: BaseBlocStatus.success(),
            isLast: entity.isLast,
            list: entity.list,
          ),
        );
      },
      fail: (String message) {},
    );
  }
}

/// 진행 Bloc
class JobPostingsInProgressBloc extends JobPostingsBloc {
  JobPostingsInProgressBloc({
    required super.useCase,
  }) : super(status: JobPostingStatusType.inProgress);
}

/// 마감 Bloc
class JobPostingsClosedBloc extends JobPostingsBloc {
  JobPostingsClosedBloc({
    required super.useCase,
  }) : super(status: JobPostingStatusType.close);
}

/// 삭제 Bloc
class JobPostingsDeleteBloc extends JobPostingsBloc {
  JobPostingsDeleteBloc({
    required super.useCase,
  }) : super(status: JobPostingStatusType.delete);
}
