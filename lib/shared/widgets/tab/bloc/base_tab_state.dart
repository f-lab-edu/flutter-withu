part of 'base_tab_bloc.dart';

class BaseTabState {
  final List<BaseTabData> tabs;
  final BaseTabData? selectedTab;

  BaseTabState({
    required this.tabs,
    this.selectedTab,
  });
}
