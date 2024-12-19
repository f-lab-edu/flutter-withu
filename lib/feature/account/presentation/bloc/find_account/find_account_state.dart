part of 'find_account_bloc.dart';

enum FindAccountTabType with L10nKeyProvider {
  id(l10nKey: 'findId'),
  password(l10nKey: 'findPassword');

  @override
  final String l10nKey;

  const FindAccountTabType({required this.l10nKey});
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
