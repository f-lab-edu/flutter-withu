part of 'find_account_bloc.dart';

enum FindAccountTabType with L10nKeyProvider, WidgetKeyUtils {
  id(
    l10nKey: 'findId',
    key: 'idTab',
  ),

  password(
    l10nKey: 'findPassword',
    key: 'passwordTab',
  );

  @override
  final String l10nKey;

  final String key;

  const FindAccountTabType({
    required this.l10nKey,
    required this.key,
  });

  @override
  String getKey() {
    return key;
  }
}

@freezed
class FindAccountState extends BaseBlocState with _$FindAccountState {
  factory FindAccountState({
    /// 상태.
    required BaseBlocStatus status,

    /// 다이얼로그 메시지
    @Default('') String message,

    /// 탭 타입
    @Default(FindAccountTabType.id) FindAccountTabType currentTab,
  }) = _FindAccountState;
}
