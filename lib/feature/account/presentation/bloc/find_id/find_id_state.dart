part of 'find_id_bloc.dart';


@freezed
class FindIdState extends BaseBlocState with _$FindIdState {
  factory FindIdState({
    /// 상태.
    required BaseBlocStatus status,

    /// 다이얼로그 메시지
    @Default('') String message,

    /// 휴대폰 인증 완료 여부
    @Default(false) bool isAuth,
  }) = _FindIdState;
}
