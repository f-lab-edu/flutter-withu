// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_posting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobPosting _$JobPostingFromJson(Map<String, dynamic> json) {
  return _JobPosting.fromJson(json);
}

/// @nodoc
mixin _$JobPosting {
  String get id => throw _privateConstructorUsedError; // Id
  String get title => throw _privateConstructorUsedError; // 공고명
  JobCategory get jobCategory => throw _privateConstructorUsedError; // 직업 카테고리
  DateTime get startDate => throw _privateConstructorUsedError; // 근무 시작 날짜
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Serializes this JobPosting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobPosting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPostingCopyWith<JobPosting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPostingCopyWith<$Res> {
  factory $JobPostingCopyWith(
          JobPosting value, $Res Function(JobPosting) then) =
      _$JobPostingCopyWithImpl<$Res, JobPosting>;
  @useResult
  $Res call(
      {String id,
      String title,
      JobCategory jobCategory,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class _$JobPostingCopyWithImpl<$Res, $Val extends JobPosting>
    implements $JobPostingCopyWith<$Res> {
  _$JobPostingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPosting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? jobCategory = null,
    Object? startDate = null,
    Object? endDate = null,
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
      jobCategory: null == jobCategory
          ? _value.jobCategory
          : jobCategory // ignore: cast_nullable_to_non_nullable
              as JobCategory,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPostingImplCopyWith<$Res>
    implements $JobPostingCopyWith<$Res> {
  factory _$$JobPostingImplCopyWith(
          _$JobPostingImpl value, $Res Function(_$JobPostingImpl) then) =
      __$$JobPostingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      JobCategory jobCategory,
      DateTime startDate,
      DateTime endDate});
}

/// @nodoc
class __$$JobPostingImplCopyWithImpl<$Res>
    extends _$JobPostingCopyWithImpl<$Res, _$JobPostingImpl>
    implements _$$JobPostingImplCopyWith<$Res> {
  __$$JobPostingImplCopyWithImpl(
      _$JobPostingImpl _value, $Res Function(_$JobPostingImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPosting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? jobCategory = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$JobPostingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      jobCategory: null == jobCategory
          ? _value.jobCategory
          : jobCategory // ignore: cast_nullable_to_non_nullable
              as JobCategory,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPostingImpl implements _JobPosting {
  const _$JobPostingImpl(
      {required this.id,
      required this.title,
      required this.jobCategory,
      required this.startDate,
      required this.endDate});

  factory _$JobPostingImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPostingImplFromJson(json);

  @override
  final String id;
// Id
  @override
  final String title;
// 공고명
  @override
  final JobCategory jobCategory;
// 직업 카테고리
  @override
  final DateTime startDate;
// 근무 시작 날짜
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'JobPosting(id: $id, title: $title, jobCategory: $jobCategory, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPostingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.jobCategory, jobCategory) ||
                other.jobCategory == jobCategory) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, jobCategory, startDate, endDate);

  /// Create a copy of JobPosting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPostingImplCopyWith<_$JobPostingImpl> get copyWith =>
      __$$JobPostingImplCopyWithImpl<_$JobPostingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPostingImplToJson(
      this,
    );
  }
}

abstract class _JobPosting implements JobPosting {
  const factory _JobPosting(
      {required final String id,
      required final String title,
      required final JobCategory jobCategory,
      required final DateTime startDate,
      required final DateTime endDate}) = _$JobPostingImpl;

  factory _JobPosting.fromJson(Map<String, dynamic> json) =
      _$JobPostingImpl.fromJson;

  @override
  String get id; // Id
  @override
  String get title; // 공고명
  @override
  JobCategory get jobCategory; // 직업 카테고리
  @override
  DateTime get startDate; // 근무 시작 날짜
  @override
  DateTime get endDate;

  /// Create a copy of JobPosting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPostingImplCopyWith<_$JobPostingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
