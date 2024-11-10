// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpResponseDto _$SignUpResponseDtoFromJson(Map<String, dynamic> json) {
  return _SignUpResponseDto.fromJson(json);
}

/// @nodoc
mixin _$SignUpResponseDto {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get loginId => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;

  /// Serializes this SignUpResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpResponseDtoCopyWith<SignUpResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseDtoCopyWith<$Res> {
  factory $SignUpResponseDtoCopyWith(
          SignUpResponseDto value, $Res Function(SignUpResponseDto) then) =
      _$SignUpResponseDtoCopyWithImpl<$Res, SignUpResponseDto>;
  @useResult
  $Res call(
      {bool status,
      String message,
      String? userId,
      String? loginId,
      String? birthDate,
      String? sessionId});
}

/// @nodoc
class _$SignUpResponseDtoCopyWithImpl<$Res, $Val extends SignUpResponseDto>
    implements $SignUpResponseDtoCopyWith<$Res> {
  _$SignUpResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? userId = freezed,
    Object? loginId = freezed,
    Object? birthDate = freezed,
    Object? sessionId = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      loginId: freezed == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpResponseDtoImplCopyWith<$Res>
    implements $SignUpResponseDtoCopyWith<$Res> {
  factory _$$SignUpResponseDtoImplCopyWith(_$SignUpResponseDtoImpl value,
          $Res Function(_$SignUpResponseDtoImpl) then) =
      __$$SignUpResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      String message,
      String? userId,
      String? loginId,
      String? birthDate,
      String? sessionId});
}

/// @nodoc
class __$$SignUpResponseDtoImplCopyWithImpl<$Res>
    extends _$SignUpResponseDtoCopyWithImpl<$Res, _$SignUpResponseDtoImpl>
    implements _$$SignUpResponseDtoImplCopyWith<$Res> {
  __$$SignUpResponseDtoImplCopyWithImpl(_$SignUpResponseDtoImpl _value,
      $Res Function(_$SignUpResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? userId = freezed,
    Object? loginId = freezed,
    Object? birthDate = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_$SignUpResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      loginId: freezed == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpResponseDtoImpl implements _SignUpResponseDto {
  _$SignUpResponseDtoImpl(
      {required this.status,
      required this.message,
      this.userId,
      this.loginId,
      this.birthDate,
      this.sessionId});

  factory _$SignUpResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpResponseDtoImplFromJson(json);

  @override
  final bool status;
  @override
  final String message;
  @override
  final String? userId;
  @override
  final String? loginId;
  @override
  final String? birthDate;
  @override
  final String? sessionId;

  @override
  String toString() {
    return 'SignUpResponseDto(status: $status, message: $message, userId: $userId, loginId: $loginId, birthDate: $birthDate, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.loginId, loginId) || other.loginId == loginId) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, userId, loginId, birthDate, sessionId);

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResponseDtoImplCopyWith<_$SignUpResponseDtoImpl> get copyWith =>
      __$$SignUpResponseDtoImplCopyWithImpl<_$SignUpResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _SignUpResponseDto implements SignUpResponseDto {
  factory _SignUpResponseDto(
      {required final bool status,
      required final String message,
      final String? userId,
      final String? loginId,
      final String? birthDate,
      final String? sessionId}) = _$SignUpResponseDtoImpl;

  factory _SignUpResponseDto.fromJson(Map<String, dynamic> json) =
      _$SignUpResponseDtoImpl.fromJson;

  @override
  bool get status;
  @override
  String get message;
  @override
  String? get userId;
  @override
  String? get loginId;
  @override
  String? get birthDate;
  @override
  String? get sessionId;

  /// Create a copy of SignUpResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpResponseDtoImplCopyWith<_$SignUpResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
