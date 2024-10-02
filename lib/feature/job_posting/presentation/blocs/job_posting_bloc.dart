import 'package:flutter_bloc/flutter_bloc.dart';

part 'job_posting_state.dart';

part 'job_posting_event.dart';

class JobPostingBloc extends Bloc<JobPostingEvent, JobPostingState> {
  JobPostingBloc() : super(LoadingState());
}
