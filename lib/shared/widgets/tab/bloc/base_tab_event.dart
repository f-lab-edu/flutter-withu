part of 'base_tab_bloc.dart';

abstract class TabEvent {}

/// 탭 클릭 이벤트
class OnSelectTap extends TabEvent {
  final BaseTabData selectedTab;

  OnSelectTap(this.selectedTab);
}
