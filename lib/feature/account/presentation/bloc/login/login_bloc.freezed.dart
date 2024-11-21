// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  /// 상태.
  BaseBlocStatus get status => throw _privateConstructorUsedError;

  /// 다이얼로그 메시지
  String get message => throw _privateConstructorUsedError;

  /// loginId - email 형식
  LoginId get loginId => throw _privateConstructorUsedError;

  /// password
  Password get password => throw _privateConstructorUsedError;

  /// password Visible 여부
  bool get isVisiblePassword => throw _privateConstructorUsedError;

  /// 로그인 버튼 enabled
  bool get isEnabledLogin => throw _privateConstructorUsedError;

  /// 선택된 탭
  AccountType get selectedTab => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {BaseBlocStatus status,
      String message,
      LoginId loginId,
      Password password,
      bool isVisiblePassword,
      bool isEnabledLogin,
      AccountType selectedTab});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? loginId = null,
    Object? password = null,
    Object? isVisiblePassword = null,
    Object? isEnabledLogin = null,
    Object? selectedTab = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseBlocStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      loginId: null == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as LoginId,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isVisiblePassword: null == isVisiblePassword
          ? _value.isVisiblePassword
          : isVisiblePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabledLogin: null == isEnabledLogin
          ? _value.isEnabledLogin
          : isEnabledLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as AccountType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseBlocStatus status,
      String message,
      LoginId loginId,
      Password password,
      bool isVisiblePassword,
      bool isEnabledLogin,
      AccountType selectedTab});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? loginId = null,
    Object? password = null,
    Object? isVisiblePassword = null,
    Object? isEnabledLogin = null,
    Object? selectedTab = null,
  }) {
    return _then(_$LoginStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseBlocStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      loginId: null == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as LoginId,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isVisiblePassword: null == isVisiblePassword
          ? _value.isVisiblePassword
          : isVisiblePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabledLogin: null == isEnabledLogin
          ? _value.isEnabledLogin
          : isEnabledLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as AccountType,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  _$LoginStateImpl(
      {required this.status,
      this.message = '',
      this.loginId = Email.empty,
      this.password = Password.empty,
      this.isVisiblePassword = false,
      this.isEnabledLogin = false,
      this.selectedTab = AccountType.company});

  /// 상태.
  @override
  final BaseBlocStatus status;

  /// 다이얼로그 메시지
  @override
  @JsonKey()
  final String message;

  /// loginId - email 형식
  @override
  @JsonKey()
  final LoginId loginId;

  /// password
  @override
  @JsonKey()
  final Password password;

  /// password Visible 여부
  @override
  @JsonKey()
  final bool isVisiblePassword;

  /// 로그인 버튼 enabled
  @override
  @JsonKey()
  final bool isEnabledLogin;

  /// 선택된 탭
  @override
  @JsonKey()
  final AccountType selectedTab;

  @override
  String toString() {
    return 'LoginState(status: $status, message: $message, loginId: $loginId, password: $password, isVisiblePassword: $isVisiblePassword, isEnabledLogin: $isEnabledLogin, selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.loginId, loginId) || other.loginId == loginId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isVisiblePassword, isVisiblePassword) ||
                other.isVisiblePassword == isVisiblePassword) &&
            (identical(other.isEnabledLogin, isEnabledLogin) ||
                other.isEnabledLogin == isEnabledLogin) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, loginId,
      password, isVisiblePassword, isEnabledLogin, selectedTab);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
      {required final BaseBlocStatus status,
      final String message,
      final LoginId loginId,
      final Password password,
      final bool isVisiblePassword,
      final bool isEnabledLogin,
      final AccountType selectedTab}) = _$LoginStateImpl;

  /// 상태.
  @override
  BaseBlocStatus get status;

  /// 다이얼로그 메시지
  @override
  String get message;

  /// loginId - email 형식
  @override
  LoginId get loginId;

  /// password
  @override
  Password get password;

  /// password Visible 여부
  @override
  bool get isVisiblePassword;

  /// 로그인 버튼 enabled
  @override
  bool get isEnabledLogin;

  /// 선택된 탭
  @override
  AccountType get selectedTab;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
