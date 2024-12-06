import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';

part 'find_account_bloc.handler.dart';

part 'find_account_event.dart';

part 'find_account_state.dart';

part 'find_account_bloc.freezed.dart';

typedef FindAccountBlocBuilder = BlocBuilder<FindAccountBloc, FindAccountState>;

class FindAccountBloc extends BaseBloc<FindAccountEvent, FindAccountState> {
  FindAccountBloc()
      : super(
          FindAccountState(status: BaseBlocStatus.initial()),
        ) {
    on<FindAccountTabPressed>(_onTabPressed);
  }
}
