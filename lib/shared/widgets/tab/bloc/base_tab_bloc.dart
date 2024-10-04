import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:withu_app/shared/shared.dart';

part 'base_tab_event.dart';

part 'base_tab_state.dart';

// TabBloc 정의
class BaseTabBloc extends Bloc<TabEvent, BaseTabState> {
  BaseTabBloc({
    required List<BaseTabData> tabs,
  }) : super(BaseTabState(tabs: tabs, selectedTab: null)) {
    on<OnSelectTap>(
      (event, emit) => emit(
        BaseTabState(
          tabs: tabs,
          selectedTab: event.selectedTab,
        ),
      ),
    );
  }
}
