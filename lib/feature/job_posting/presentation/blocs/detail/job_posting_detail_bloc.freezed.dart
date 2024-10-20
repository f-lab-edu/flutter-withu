// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_posting_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JobPostingDetailState {
  JobPostingDetailStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  JobPostingDetailEntity? get entity => throw _privateConstructorUsedError;

  /// Create a copy of JobPostingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPostingDetailStateCopyWith<JobPostingDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPostingDetailStateCopyWith<$Res> {
  factory $JobPostingDetailStateCopyWith(JobPostingDetailState value,
          $Res Function(JobPostingDetailState) then) =
      _$JobPostingDetailStateCopyWithImpl<$Res, JobPostingDetailState>;
  @useResult
  $Res call(
      {JobPostingDetailStatus status,
      String message,
      JobPostingDetailEntity? entity});
}

/// @nodoc
class _$JobPostingDetailStateCopyWithImpl<$Res,
        $Val extends JobPostingDetailState>
    implements $JobPostingDetailStateCopyWith<$Res> {
  _$JobPostingDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPostingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? entity = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobPostingDetailStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as JobPostingDetailEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPostingDetailStateImplCopyWith<$Res>
    implements $JobPostingDetailStateCopyWith<$Res> {
  factory _$$JobPostingDetailStateImplCopyWith(
          _$JobPostingDetailStateImpl value,
          $Res Function(_$JobPostingDetailStateImpl) then) =
      __$$JobPostingDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {JobPostingDetailStatus status,
      String message,
      JobPostingDetailEntity? entity});
}

/// @nodoc
class __$$JobPostingDetailStateImplCopyWithImpl<$Res>
    extends _$JobPostingDetailStateCopyWithImpl<$Res,
        _$JobPostingDetailStateImpl>
    implements _$$JobPostingDetailStateImplCopyWith<$Res> {
  __$$JobPostingDetailStateImplCopyWithImpl(_$JobPostingDetailStateImpl _value,
      $Res Function(_$JobPostingDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPostingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? entity = freezed,
  }) {
    return _then(_$JobPostingDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobPostingDetailStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as JobPostingDetailEntity?,
    ));
  }
}

/// @nodoc

class _$JobPostingDetailStateImpl implements _JobPostingDetailState {
  _$JobPostingDetailStateImpl(
      {required this.status, required this.message, this.entity});

  @override
  final JobPostingDetailStatus status;
  @override
  final String message;
  @override
  final JobPostingDetailEntity? entity;

  @override
  String toString() {
    return 'JobPostingDetailState(status: $status, message: $message, entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPostingDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, entity);

  /// Create a copy of JobPostingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPostingDetailStateImplCopyWith<_$JobPostingDetailStateImpl>
      get copyWith => __$$JobPostingDetailStateImplCopyWithImpl<
          _$JobPostingDetailStateImpl>(this, _$identity);
}

abstract class _JobPostingDetailState implements JobPostingDetailState {
  factory _JobPostingDetailState(
      {required final JobPostingDetailStatus status,
      required final String message,
      final JobPostingDetailEntity? entity}) = _$JobPostingDetailStateImpl;

  @override
  JobPostingDetailStatus get status;
  @override
  String get message;
  @override
  JobPostingDetailEntity? get entity;

  /// Create a copy of JobPostingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPostingDetailStateImplCopyWith<_$JobPostingDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
