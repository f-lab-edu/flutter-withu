// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_posting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobPostingModel _$JobPostingModelFromJson(Map<String, dynamic> json) {
  return _JobPostingModel.fromJson(json);
}

/// @nodoc
mixin _$JobPostingModel {
  String get id => throw _privateConstructorUsedError; // Id
  String get title => throw _privateConstructorUsedError; // 공고명
  JobCategory get category => throw _privateConstructorUsedError; // 직업 카테고리
  JobPostingStatusType get status => throw _privateConstructorUsedError; // 상태값
  DateTime get startDate => throw _privateConstructorUsedError; // 근무 시작 날짜
  DateTime get endDate => throw _privateConstructorUsedError; // 근무 종료 날짜
  int get current => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;

  /// Serializes this JobPostingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobPostingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPostingModelCopyWith<JobPostingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPostingModelCopyWith<$Res> {
  factory $JobPostingModelCopyWith(
          JobPostingModel value, $Res Function(JobPostingModel) then) =
      _$JobPostingModelCopyWithImpl<$Res, JobPostingModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      JobCategory category,
      JobPostingStatusType status,
      DateTime startDate,
      DateTime endDate,
      int current,
      int max});
}

/// @nodoc
class _$JobPostingModelCopyWithImpl<$Res, $Val extends JobPostingModel>
    implements $JobPostingModelCopyWith<$Res> {
  _$JobPostingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPostingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? status = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? current = null,
    Object? max = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as JobCategory,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobPostingStatusType,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPostingModelImplCopyWith<$Res>
    implements $JobPostingModelCopyWith<$Res> {
  factory _$$JobPostingModelImplCopyWith(_$JobPostingModelImpl value,
          $Res Function(_$JobPostingModelImpl) then) =
      __$$JobPostingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      JobCategory category,
      JobPostingStatusType status,
      DateTime startDate,
      DateTime endDate,
      int current,
      int max});
}

/// @nodoc
class __$$JobPostingModelImplCopyWithImpl<$Res>
    extends _$JobPostingModelCopyWithImpl<$Res, _$JobPostingModelImpl>
    implements _$$JobPostingModelImplCopyWith<$Res> {
  __$$JobPostingModelImplCopyWithImpl(
      _$JobPostingModelImpl _value, $Res Function(_$JobPostingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPostingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? status = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? current = null,
    Object? max = null,
  }) {
    return _then(_$JobPostingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as JobCategory,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobPostingStatusType,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPostingModelImpl implements _JobPostingModel {
  const _$JobPostingModelImpl(
      {required this.id,
      required this.title,
      required this.category,
      required this.status,
      required this.startDate,
      required this.endDate,
      required this.current,
      required this.max});

  factory _$JobPostingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPostingModelImplFromJson(json);

  @override
  final String id;
// Id
  @override
  final String title;
// 공고명
  @override
  final JobCategory category;
// 직업 카테고리
  @override
  final JobPostingStatusType status;
// 상태값
  @override
  final DateTime startDate;
// 근무 시작 날짜
  @override
  final DateTime endDate;
// 근무 종료 날짜
  @override
  final int current;
  @override
  final int max;

  @override
  String toString() {
    return 'JobPostingModel(id: $id, title: $title, category: $category, status: $status, startDate: $startDate, endDate: $endDate, current: $current, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPostingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, category, status,
      startDate, endDate, current, max);

  /// Create a copy of JobPostingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPostingModelImplCopyWith<_$JobPostingModelImpl> get copyWith =>
      __$$JobPostingModelImplCopyWithImpl<_$JobPostingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPostingModelImplToJson(
      this,
    );
  }
}

abstract class _JobPostingModel implements JobPostingModel {
  const factory _JobPostingModel(
      {required final String id,
      required final String title,
      required final JobCategory category,
      required final JobPostingStatusType status,
      required final DateTime startDate,
      required final DateTime endDate,
      required final int current,
      required final int max}) = _$JobPostingModelImpl;

  factory _JobPostingModel.fromJson(Map<String, dynamic> json) =
      _$JobPostingModelImpl.fromJson;

  @override
  String get id; // Id
  @override
  String get title; // 공고명
  @override
  JobCategory get category; // 직업 카테고리
  @override
  JobPostingStatusType get status; // 상태값
  @override
  DateTime get startDate; // 근무 시작 날짜
  @override
  DateTime get endDate; // 근무 종료 날짜
  @override
  int get current;
  @override
  int get max;

  /// Create a copy of JobPostingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPostingModelImplCopyWith<_$JobPostingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
