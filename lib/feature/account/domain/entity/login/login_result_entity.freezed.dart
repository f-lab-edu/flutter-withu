// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginResultEntity {
  bool get isLoggedIn => throw _privateConstructorUsedError; // 로그인 성공 엽
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of LoginResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResultEntityCopyWith<LoginResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultEntityCopyWith<$Res> {
  factory $LoginResultEntityCopyWith(
          LoginResultEntity value, $Res Function(LoginResultEntity) then) =
      _$LoginResultEntityCopyWithImpl<$Res, LoginResultEntity>;
  @useResult
  $Res call({bool isLoggedIn, String message});
}

/// @nodoc
class _$LoginResultEntityCopyWithImpl<$Res, $Val extends LoginResultEntity>
    implements $LoginResultEntityCopyWith<$Res> {
  _$LoginResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResultEntityImplCopyWith<$Res>
    implements $LoginResultEntityCopyWith<$Res> {
  factory _$$LoginResultEntityImplCopyWith(_$LoginResultEntityImpl value,
          $Res Function(_$LoginResultEntityImpl) then) =
      __$$LoginResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoggedIn, String message});
}

/// @nodoc
class __$$LoginResultEntityImplCopyWithImpl<$Res>
    extends _$LoginResultEntityCopyWithImpl<$Res, _$LoginResultEntityImpl>
    implements _$$LoginResultEntityImplCopyWith<$Res> {
  __$$LoginResultEntityImplCopyWithImpl(_$LoginResultEntityImpl _value,
      $Res Function(_$LoginResultEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
    Object? message = null,
  }) {
    return _then(_$LoginResultEntityImpl(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginResultEntityImpl implements _LoginResultEntity {
  _$LoginResultEntityImpl({required this.isLoggedIn, this.message = ''});

  @override
  final bool isLoggedIn;
// 로그인 성공 엽
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'LoginResultEntity(isLoggedIn: $isLoggedIn, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResultEntityImpl &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoggedIn, message);

  /// Create a copy of LoginResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResultEntityImplCopyWith<_$LoginResultEntityImpl> get copyWith =>
      __$$LoginResultEntityImplCopyWithImpl<_$LoginResultEntityImpl>(
          this, _$identity);
}

abstract class _LoginResultEntity implements LoginResultEntity {
  factory _LoginResultEntity(
      {required final bool isLoggedIn,
      final String message}) = _$LoginResultEntityImpl;

  @override
  bool get isLoggedIn; // 로그인 성공 엽
  @override
  String get message;

  /// Create a copy of LoginResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResultEntityImplCopyWith<_$LoginResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
