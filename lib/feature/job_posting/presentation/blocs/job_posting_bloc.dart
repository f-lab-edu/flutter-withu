import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

part 'job_posting_state.dart';

part 'job_posting_event.dart';

class JobPostingBloc extends Bloc<JobPostingEvent, JobPostingState> {
  final JobPostingUseCase useCase;

  JobPostingBloc({
    required this.useCase,
  }) : super(const JobPostingState()) {
    on<OnGettingListEvent>(_onGettingListEvent);
  }

  _onGettingListEvent(
    OnGettingListEvent event,
    Emitter<JobPostingState> emit,
  ) async {
    logger.i('_onGettingListEvent');

    emit(state.copyWith(status: JobPostingStatus.loading));

    final List<JobPostingEntity> list = List.generate(
      30,
      (int index) => JobPostingEntity(
        id: '$index',
        title: '공고명 #$index',
        category: JobCategory.catering,
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        current: index % 3,
        max: 3,
      ),
    );
    emit(
      state.copyWith(
        status: JobPostingStatus.success,
        list: list,
      ),
    );
  }
}
