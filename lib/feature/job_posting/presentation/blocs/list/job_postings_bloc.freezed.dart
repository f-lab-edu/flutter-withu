// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_postings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JobPostingState {
  /// 상태.
  BaseBlocStatus get status => throw _privateConstructorUsedError;

  /// 공고 목록.
  List<JobPostingsItemEntity> get list => throw _privateConstructorUsedError;

  /// 마지막 여부.
  bool get isLast => throw _privateConstructorUsedError;

  /// Create a copy of JobPostingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPostingStateCopyWith<JobPostingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPostingStateCopyWith<$Res> {
  factory $JobPostingStateCopyWith(
          JobPostingState value, $Res Function(JobPostingState) then) =
      _$JobPostingStateCopyWithImpl<$Res, JobPostingState>;
  @useResult
  $Res call(
      {BaseBlocStatus status, List<JobPostingsItemEntity> list, bool isLast});
}

/// @nodoc
class _$JobPostingStateCopyWithImpl<$Res, $Val extends JobPostingState>
    implements $JobPostingStateCopyWith<$Res> {
  _$JobPostingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPostingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? list = null,
    Object? isLast = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseBlocStatus,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<JobPostingsItemEntity>,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPostingStateImplCopyWith<$Res>
    implements $JobPostingStateCopyWith<$Res> {
  factory _$$JobPostingStateImplCopyWith(_$JobPostingStateImpl value,
          $Res Function(_$JobPostingStateImpl) then) =
      __$$JobPostingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseBlocStatus status, List<JobPostingsItemEntity> list, bool isLast});
}

/// @nodoc
class __$$JobPostingStateImplCopyWithImpl<$Res>
    extends _$JobPostingStateCopyWithImpl<$Res, _$JobPostingStateImpl>
    implements _$$JobPostingStateImplCopyWith<$Res> {
  __$$JobPostingStateImplCopyWithImpl(
      _$JobPostingStateImpl _value, $Res Function(_$JobPostingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPostingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? list = null,
    Object? isLast = null,
  }) {
    return _then(_$JobPostingStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseBlocStatus,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<JobPostingsItemEntity>,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$JobPostingStateImpl implements _JobPostingState {
  _$JobPostingStateImpl(
      {required this.status,
      final List<JobPostingsItemEntity> list = const [],
      this.isLast = true})
      : _list = list;

  /// 상태.
  @override
  final BaseBlocStatus status;

  /// 공고 목록.
  final List<JobPostingsItemEntity> _list;

  /// 공고 목록.
  @override
  @JsonKey()
  List<JobPostingsItemEntity> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  /// 마지막 여부.
  @override
  @JsonKey()
  final bool isLast;

  @override
  String toString() {
    return 'JobPostingState(status: $status, list: $list, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPostingStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_list), isLast);

  /// Create a copy of JobPostingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPostingStateImplCopyWith<_$JobPostingStateImpl> get copyWith =>
      __$$JobPostingStateImplCopyWithImpl<_$JobPostingStateImpl>(
          this, _$identity);
}

abstract class _JobPostingState implements JobPostingState {
  factory _JobPostingState(
      {required final BaseBlocStatus status,
      final List<JobPostingsItemEntity> list,
      final bool isLast}) = _$JobPostingStateImpl;

  /// 상태.
  @override
  BaseBlocStatus get status;

  /// 공고 목록.
  @override
  List<JobPostingsItemEntity> get list;

  /// 마지막 여부.
  @override
  bool get isLast;

  /// Create a copy of JobPostingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPostingStateImplCopyWith<_$JobPostingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
