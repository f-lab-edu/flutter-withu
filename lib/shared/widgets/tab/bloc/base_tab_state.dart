part of 'base_tab_bloc.dart';

class BaseTabState<T> {
  final List<BaseTabData<T>> tabs;
  final BaseTabData<T>? selectedTab;

  BaseTabState({
    required this.tabs,
    this.selectedTab,
  });

  BaseTabState copyWith({
    List<BaseTabData<T>>? tabs,
    BaseTabData<T>? selectedTab,
  }) {
    return BaseTabState(
      tabs: tabs ?? this.tabs,
      selectedTab: selectedTab ?? this.selectedTab,
    );
  }
}
