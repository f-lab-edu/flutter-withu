import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'find_id_bloc.handler.dart';

part 'find_id_event.dart';

part 'find_id_state.dart';

part 'find_id_bloc.freezed.dart';

typedef FindIdBlocProvider = BlocProvider<FindIdBloc>;

typedef FindIdBlocConsumer = BlocConsumer<FindIdBloc, FindIdState>;

class FindIdBloc extends BaseBloc<FindIdEvent, FindIdState> {
  final FindIdUseCase findIdUseCase;

  FindIdBloc({
    required this.findIdUseCase,
  }) : super(FindIdState(status: BaseBlocStatus.initial())) {
    on<FindIdIsAuthChanged>(_onIsAuthChanged);
    on<FindIdPressed>(_onPressed);
  }
}
