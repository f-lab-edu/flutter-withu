import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/job_posting/domain/domain.dart';

part 'job_posting_state.dart';

part 'job_posting_event.dart';

class JobPostingBloc extends Bloc<JobPostingEvent, JobPostingState> {
  final JobPostingUseCase useCase;

  JobPostingBloc({
    required this.useCase,
  }) : super(InitState()) {
    on<OnGettingListEvent>(_onGettingListEvent);
  }

  _onGettingListEvent(
    OnGettingListEvent event,
    Emitter<JobPostingState> emitter,
  ) async {
    try {
      logger.i('_onGettingListEvent');
      emitter(LoadingState());

      final result = await useCase.getJobPostings();
      return result;
    } catch (e) {
      logger.e(e);
    }
  }
}
