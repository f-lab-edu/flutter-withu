// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteResponseDto _$DeleteResponseDtoFromJson(Map<String, dynamic> json) {
  return _DeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$DeleteResponseDto {
  String get id => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this DeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteResponseDtoCopyWith<DeleteResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteResponseDtoCopyWith<$Res> {
  factory $DeleteResponseDtoCopyWith(
          DeleteResponseDto value, $Res Function(DeleteResponseDto) then) =
      _$DeleteResponseDtoCopyWithImpl<$Res, DeleteResponseDto>;
  @useResult
  $Res call({String id, bool deleted, String? message});
}

/// @nodoc
class _$DeleteResponseDtoCopyWithImpl<$Res, $Val extends DeleteResponseDto>
    implements $DeleteResponseDtoCopyWith<$Res> {
  _$DeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deleted = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteResponseDtoImplCopyWith<$Res>
    implements $DeleteResponseDtoCopyWith<$Res> {
  factory _$$DeleteResponseDtoImplCopyWith(_$DeleteResponseDtoImpl value,
          $Res Function(_$DeleteResponseDtoImpl) then) =
      __$$DeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool deleted, String? message});
}

/// @nodoc
class __$$DeleteResponseDtoImplCopyWithImpl<$Res>
    extends _$DeleteResponseDtoCopyWithImpl<$Res, _$DeleteResponseDtoImpl>
    implements _$$DeleteResponseDtoImplCopyWith<$Res> {
  __$$DeleteResponseDtoImplCopyWithImpl(_$DeleteResponseDtoImpl _value,
      $Res Function(_$DeleteResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deleted = null,
    Object? message = freezed,
  }) {
    return _then(_$DeleteResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteResponseDtoImpl implements _DeleteResponseDto {
  const _$DeleteResponseDtoImpl(
      {required this.id, required this.deleted, required this.message});

  factory _$DeleteResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteResponseDtoImplFromJson(json);

  @override
  final String id;
  @override
  final bool deleted;
  @override
  final String? message;

  @override
  String toString() {
    return 'DeleteResponseDto(id: $id, deleted: $deleted, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, deleted, message);

  /// Create a copy of DeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteResponseDtoImplCopyWith<_$DeleteResponseDtoImpl> get copyWith =>
      __$$DeleteResponseDtoImplCopyWithImpl<_$DeleteResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _DeleteResponseDto implements DeleteResponseDto {
  const factory _DeleteResponseDto(
      {required final String id,
      required final bool deleted,
      required final String? message}) = _$DeleteResponseDtoImpl;

  factory _DeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$DeleteResponseDtoImpl.fromJson;

  @override
  String get id;
  @override
  bool get deleted;
  @override
  String? get message;

  /// Create a copy of DeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteResponseDtoImplCopyWith<_$DeleteResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
