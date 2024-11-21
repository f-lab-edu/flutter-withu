part of 'email_duplicate_check_bloc.dart';

@freezed
class EmailDuplicateCheckState extends BaseBlocState
    with _$EmailDuplicateCheckState {
  factory EmailDuplicateCheckState({
    required BaseBlocStatus status,

    /// 휴대폰
    @Default(Email.empty) Email email,

    /// 에러 문구
    @Default('') String errorText,

    /// 에러 문구 노출 여부
    @Default(VisibleType.none) VisibleType errorVisible,
  }) = _EmailDuplicateCheckState;
}

extension EmailDuplicateCheckStateExt on EmailDuplicateCheckState {
  /// 에러 문구 노출 여부
  bool get isVisibleError => errorVisible.isVisible;
}
