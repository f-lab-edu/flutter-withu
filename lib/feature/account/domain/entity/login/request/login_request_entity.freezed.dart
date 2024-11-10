// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginRequestEntity {
  AccountType get accountType => throw _privateConstructorUsedError;
  LoginType get loginType => throw _privateConstructorUsedError;
  String get loginId => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of LoginRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginRequestEntityCopyWith<LoginRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestEntityCopyWith<$Res> {
  factory $LoginRequestEntityCopyWith(
          LoginRequestEntity value, $Res Function(LoginRequestEntity) then) =
      _$LoginRequestEntityCopyWithImpl<$Res, LoginRequestEntity>;
  @useResult
  $Res call(
      {AccountType accountType,
      LoginType loginType,
      String loginId,
      String password});
}

/// @nodoc
class _$LoginRequestEntityCopyWithImpl<$Res, $Val extends LoginRequestEntity>
    implements $LoginRequestEntityCopyWith<$Res> {
  _$LoginRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountType = null,
    Object? loginType = null,
    Object? loginId = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType,
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as LoginType,
      loginId: null == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginRequestEntityImplCopyWith<$Res>
    implements $LoginRequestEntityCopyWith<$Res> {
  factory _$$LoginRequestEntityImplCopyWith(_$LoginRequestEntityImpl value,
          $Res Function(_$LoginRequestEntityImpl) then) =
      __$$LoginRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountType accountType,
      LoginType loginType,
      String loginId,
      String password});
}

/// @nodoc
class __$$LoginRequestEntityImplCopyWithImpl<$Res>
    extends _$LoginRequestEntityCopyWithImpl<$Res, _$LoginRequestEntityImpl>
    implements _$$LoginRequestEntityImplCopyWith<$Res> {
  __$$LoginRequestEntityImplCopyWithImpl(_$LoginRequestEntityImpl _value,
      $Res Function(_$LoginRequestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountType = null,
    Object? loginType = null,
    Object? loginId = null,
    Object? password = null,
  }) {
    return _then(_$LoginRequestEntityImpl(
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountType,
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as LoginType,
      loginId: null == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginRequestEntityImpl implements _LoginRequestEntity {
  _$LoginRequestEntityImpl(
      {required this.accountType,
      required this.loginType,
      required this.loginId,
      required this.password});

  @override
  final AccountType accountType;
  @override
  final LoginType loginType;
  @override
  final String loginId;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginRequestEntity(accountType: $accountType, loginType: $loginType, loginId: $loginId, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestEntityImpl &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.loginId, loginId) || other.loginId == loginId) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accountType, loginType, loginId, password);

  /// Create a copy of LoginRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestEntityImplCopyWith<_$LoginRequestEntityImpl> get copyWith =>
      __$$LoginRequestEntityImplCopyWithImpl<_$LoginRequestEntityImpl>(
          this, _$identity);
}

abstract class _LoginRequestEntity implements LoginRequestEntity {
  factory _LoginRequestEntity(
      {required final AccountType accountType,
      required final LoginType loginType,
      required final String loginId,
      required final String password}) = _$LoginRequestEntityImpl;

  @override
  AccountType get accountType;
  @override
  LoginType get loginType;
  @override
  String get loginId;
  @override
  String get password;

  /// Create a copy of LoginRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestEntityImplCopyWith<_$LoginRequestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
