// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpResultEntity {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  LoginType get type => throw _privateConstructorUsedError;

  /// Create a copy of SignUpResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpResultEntityCopyWith<SignUpResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResultEntityCopyWith<$Res> {
  factory $SignUpResultEntityCopyWith(
          SignUpResultEntity value, $Res Function(SignUpResultEntity) then) =
      _$SignUpResultEntityCopyWithImpl<$Res, SignUpResultEntity>;
  @useResult
  $Res call({bool status, String message, String name, LoginType type});
}

/// @nodoc
class _$SignUpResultEntityCopyWithImpl<$Res, $Val extends SignUpResultEntity>
    implements $SignUpResultEntityCopyWith<$Res> {
  _$SignUpResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LoginType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpResultEntityImplCopyWith<$Res>
    implements $SignUpResultEntityCopyWith<$Res> {
  factory _$$SignUpResultEntityImplCopyWith(_$SignUpResultEntityImpl value,
          $Res Function(_$SignUpResultEntityImpl) then) =
      __$$SignUpResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String message, String name, LoginType type});
}

/// @nodoc
class __$$SignUpResultEntityImplCopyWithImpl<$Res>
    extends _$SignUpResultEntityCopyWithImpl<$Res, _$SignUpResultEntityImpl>
    implements _$$SignUpResultEntityImplCopyWith<$Res> {
  __$$SignUpResultEntityImplCopyWithImpl(_$SignUpResultEntityImpl _value,
      $Res Function(_$SignUpResultEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$SignUpResultEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LoginType,
    ));
  }
}

/// @nodoc

class _$SignUpResultEntityImpl implements _SignUpResultEntity {
  _$SignUpResultEntityImpl(
      {required this.status,
      required this.message,
      this.name = '',
      this.type = LoginType.none});

  @override
  final bool status;
  @override
  final String message;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final LoginType type;

  @override
  String toString() {
    return 'SignUpResultEntity(status: $status, message: $message, name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResultEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, name, type);

  /// Create a copy of SignUpResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResultEntityImplCopyWith<_$SignUpResultEntityImpl> get copyWith =>
      __$$SignUpResultEntityImplCopyWithImpl<_$SignUpResultEntityImpl>(
          this, _$identity);
}

abstract class _SignUpResultEntity implements SignUpResultEntity {
  factory _SignUpResultEntity(
      {required final bool status,
      required final String message,
      final String name,
      final LoginType type}) = _$SignUpResultEntityImpl;

  @override
  bool get status;
  @override
  String get message;
  @override
  String get name;
  @override
  LoginType get type;

  /// Create a copy of SignUpResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpResultEntityImplCopyWith<_$SignUpResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
