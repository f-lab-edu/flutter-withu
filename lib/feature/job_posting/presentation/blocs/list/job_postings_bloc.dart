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
  final JobPostingUseCase useCase;

  JobPostingsBloc({
    required this.useCase,
  }) : super(
          JobPostingState(status: BaseBlocStatus.initial()),
        ) {
    on<JobPostingsInitialized>(_onInitialized);
    on<OnGettingListEvent>(_onGettingListEvent);
  }

  void _onInitialized(
    JobPostingsInitialized event,
    Emitter<JobPostingState> emit,
  ) async {
    await searchList(
      type: event.type,
      page: 0,
      emit: emit,
    );
  }

  _onGettingListEvent(
    OnGettingListEvent event,
    Emitter<JobPostingState> emit,
  ) async {
    await searchList(
      type: event.type,
      page: event.page,
      emit: emit,
    );
  }

  /// API: 공고 목록 조회
  Future<void> searchList({
    required JobPostingStatusType type,
    required int page,
    required Emitter<JobPostingState> emit,
  }) async {
    emit(state.copyWith(status: BaseBlocStatus.loading()));

    final Either<JobPostingsEntity> result = await useCase.searchJobPostings(
      status: type,
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

/// 임시저장 Bloc
class JobPostingsTemporaryBloc extends JobPostingsBloc {
  JobPostingsTemporaryBloc({required super.useCase});
}

/// 진행 Bloc
class JobPostingsInProgressBloc extends JobPostingsBloc {
  JobPostingsInProgressBloc({required super.useCase});
}

/// 마감 Bloc
class JobPostingsClosedBloc extends JobPostingsBloc {
  JobPostingsClosedBloc({required super.useCase});
}
