import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

part 'job_postings_state.dart';

part 'job_postings_event.dart';

class JobPostingsBloc extends Bloc<JobPostingsEvent, JobPostingState> {
  final JobPostingUseCase useCase;

  JobPostingsBloc({
    required this.useCase,
  }) : super(const JobPostingState()) {
    on<OnGettingListEvent>(_onGettingListEvent);
  }

  _onGettingListEvent(
    OnGettingListEvent event,
    Emitter<JobPostingState> emit,
  ) async {
    emit(state.copyWith(status: JobPostingsStatus.loading));

    final List<JobPostingEntity> entities = await useCase.searchJobPostings(
          status: event.type,
          page: event.page,
        ) ??
        [];

    emit(
      state.copyWith(
        status: JobPostingsStatus.success,
        isLast: false,
        list: entities,
      ),
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
