import 'package:flutter_bloc/flutter_bloc.dart';

part 'base_bloc_event.dart';

part 'base_bloc_state.dart';

/// 공용 Bloc
abstract class BaseBloc<Event extends BaseBlocEvent,
    State extends BaseBlocState> extends Bloc<Event, State> {
  BaseBloc(super.initialState);
}
