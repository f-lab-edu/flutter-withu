// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_posting_worker_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobPostingWorkerDto _$JobPostingWorkerDtoFromJson(Map<String, dynamic> json) {
  return _JobPostingWorkerDto.fromJson(json);
}

/// @nodoc
mixin _$JobPostingWorkerDto {
  String get id => throw _privateConstructorUsedError;
  SimpleUserDto get userInfo => throw _privateConstructorUsedError;
  bool get workStatus => throw _privateConstructorUsedError; // 출근 여부
  DateTime? get workStartTime => throw _privateConstructorUsedError; // 근무 시작 시간
  DateTime? get workEndTime => throw _privateConstructorUsedError;

  /// Serializes this JobPostingWorkerDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobPostingWorkerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPostingWorkerDtoCopyWith<JobPostingWorkerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPostingWorkerDtoCopyWith<$Res> {
  factory $JobPostingWorkerDtoCopyWith(
          JobPostingWorkerDto value, $Res Function(JobPostingWorkerDto) then) =
      _$JobPostingWorkerDtoCopyWithImpl<$Res, JobPostingWorkerDto>;
  @useResult
  $Res call(
      {String id,
      SimpleUserDto userInfo,
      bool workStatus,
      DateTime? workStartTime,
      DateTime? workEndTime});

  $SimpleUserDtoCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$JobPostingWorkerDtoCopyWithImpl<$Res, $Val extends JobPostingWorkerDto>
    implements $JobPostingWorkerDtoCopyWith<$Res> {
  _$JobPostingWorkerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPostingWorkerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userInfo = null,
    Object? workStatus = null,
    Object? workStartTime = freezed,
    Object? workEndTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as SimpleUserDto,
      workStatus: null == workStatus
          ? _value.workStatus
          : workStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      workStartTime: freezed == workStartTime
          ? _value.workStartTime
          : workStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workEndTime: freezed == workEndTime
          ? _value.workEndTime
          : workEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of JobPostingWorkerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SimpleUserDtoCopyWith<$Res> get userInfo {
    return $SimpleUserDtoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobPostingWorkerDtoImplCopyWith<$Res>
    implements $JobPostingWorkerDtoCopyWith<$Res> {
  factory _$$JobPostingWorkerDtoImplCopyWith(_$JobPostingWorkerDtoImpl value,
          $Res Function(_$JobPostingWorkerDtoImpl) then) =
      __$$JobPostingWorkerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      SimpleUserDto userInfo,
      bool workStatus,
      DateTime? workStartTime,
      DateTime? workEndTime});

  @override
  $SimpleUserDtoCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$JobPostingWorkerDtoImplCopyWithImpl<$Res>
    extends _$JobPostingWorkerDtoCopyWithImpl<$Res, _$JobPostingWorkerDtoImpl>
    implements _$$JobPostingWorkerDtoImplCopyWith<$Res> {
  __$$JobPostingWorkerDtoImplCopyWithImpl(_$JobPostingWorkerDtoImpl _value,
      $Res Function(_$JobPostingWorkerDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPostingWorkerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userInfo = null,
    Object? workStatus = null,
    Object? workStartTime = freezed,
    Object? workEndTime = freezed,
  }) {
    return _then(_$JobPostingWorkerDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as SimpleUserDto,
      workStatus: null == workStatus
          ? _value.workStatus
          : workStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      workStartTime: freezed == workStartTime
          ? _value.workStartTime
          : workStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      workEndTime: freezed == workEndTime
          ? _value.workEndTime
          : workEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPostingWorkerDtoImpl implements _JobPostingWorkerDto {
  _$JobPostingWorkerDtoImpl(
      {required this.id,
      required this.userInfo,
      required this.workStatus,
      this.workStartTime,
      this.workEndTime});

  factory _$JobPostingWorkerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPostingWorkerDtoImplFromJson(json);

  @override
  final String id;
  @override
  final SimpleUserDto userInfo;
  @override
  final bool workStatus;
// 출근 여부
  @override
  final DateTime? workStartTime;
// 근무 시작 시간
  @override
  final DateTime? workEndTime;

  @override
  String toString() {
    return 'JobPostingWorkerDto(id: $id, userInfo: $userInfo, workStatus: $workStatus, workStartTime: $workStartTime, workEndTime: $workEndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPostingWorkerDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.workStatus, workStatus) ||
                other.workStatus == workStatus) &&
            (identical(other.workStartTime, workStartTime) ||
                other.workStartTime == workStartTime) &&
            (identical(other.workEndTime, workEndTime) ||
                other.workEndTime == workEndTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userInfo, workStatus, workStartTime, workEndTime);

  /// Create a copy of JobPostingWorkerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPostingWorkerDtoImplCopyWith<_$JobPostingWorkerDtoImpl> get copyWith =>
      __$$JobPostingWorkerDtoImplCopyWithImpl<_$JobPostingWorkerDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPostingWorkerDtoImplToJson(
      this,
    );
  }
}

abstract class _JobPostingWorkerDto implements JobPostingWorkerDto {
  factory _JobPostingWorkerDto(
      {required final String id,
      required final SimpleUserDto userInfo,
      required final bool workStatus,
      final DateTime? workStartTime,
      final DateTime? workEndTime}) = _$JobPostingWorkerDtoImpl;

  factory _JobPostingWorkerDto.fromJson(Map<String, dynamic> json) =
      _$JobPostingWorkerDtoImpl.fromJson;

  @override
  String get id;
  @override
  SimpleUserDto get userInfo;
  @override
  bool get workStatus; // 출근 여부
  @override
  DateTime? get workStartTime; // 근무 시작 시간
  @override
  DateTime? get workEndTime;

  /// Create a copy of JobPostingWorkerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPostingWorkerDtoImplCopyWith<_$JobPostingWorkerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
