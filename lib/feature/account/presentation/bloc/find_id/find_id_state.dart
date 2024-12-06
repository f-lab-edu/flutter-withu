part of 'find_id_bloc.dart';


@freezed
class FindIdState extends BaseBlocState with _$FindIdState {
  factory FindIdState({
    /// 상태.
    required BaseBlocStatus status,

    /// 다이얼로그 메시지
    @Default('') String message,
  }) = _FindIdState;
}
