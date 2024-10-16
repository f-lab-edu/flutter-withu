// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_postings_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobPostingsItemModel _$JobPostingsItemModelFromJson(Map<String, dynamic> json) {
  return _JobPostingsItemModel.fromJson(json);
}

/// @nodoc
mixin _$JobPostingsItemModel {
  String get id => throw _privateConstructorUsedError; // Id
  String get title => throw _privateConstructorUsedError; // 공고명
  JobCategoryType get category => throw _privateConstructorUsedError; // 직업 카테고리
  JobPostingStatusType get status => throw _privateConstructorUsedError; // 상태값
  DateTime get startDate => throw _privateConstructorUsedError; // 근무 시작 날짜
  DateTime? get endDate => throw _privateConstructorUsedError; // 근무 종료 날짜
  int get currentMemberCount => throw _privateConstructorUsedError; // 현재 모집 인원
  int get maxMemberCount => throw _privateConstructorUsedError;

  /// Serializes this JobPostingsItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobPostingsItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPostingsItemModelCopyWith<JobPostingsItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPostingsItemModelCopyWith<$Res> {
  factory $JobPostingsItemModelCopyWith(JobPostingsItemModel value,
          $Res Function(JobPostingsItemModel) then) =
      _$JobPostingsItemModelCopyWithImpl<$Res, JobPostingsItemModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      JobCategoryType category,
      JobPostingStatusType status,
      DateTime startDate,
      DateTime? endDate,
      int currentMemberCount,
      int maxMemberCount});
}

/// @nodoc
class _$JobPostingsItemModelCopyWithImpl<$Res,
        $Val extends JobPostingsItemModel>
    implements $JobPostingsItemModelCopyWith<$Res> {
  _$JobPostingsItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPostingsItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? status = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? currentMemberCount = null,
    Object? maxMemberCount = null,
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
              as JobCategoryType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobPostingStatusType,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentMemberCount: null == currentMemberCount
          ? _value.currentMemberCount
          : currentMemberCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxMemberCount: null == maxMemberCount
          ? _value.maxMemberCount
          : maxMemberCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPostingsItemModelImplCopyWith<$Res>
    implements $JobPostingsItemModelCopyWith<$Res> {
  factory _$$JobPostingsItemModelImplCopyWith(_$JobPostingsItemModelImpl value,
          $Res Function(_$JobPostingsItemModelImpl) then) =
      __$$JobPostingsItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      JobCategoryType category,
      JobPostingStatusType status,
      DateTime startDate,
      DateTime? endDate,
      int currentMemberCount,
      int maxMemberCount});
}

/// @nodoc
class __$$JobPostingsItemModelImplCopyWithImpl<$Res>
    extends _$JobPostingsItemModelCopyWithImpl<$Res, _$JobPostingsItemModelImpl>
    implements _$$JobPostingsItemModelImplCopyWith<$Res> {
  __$$JobPostingsItemModelImplCopyWithImpl(_$JobPostingsItemModelImpl _value,
      $Res Function(_$JobPostingsItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPostingsItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? category = null,
    Object? status = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? currentMemberCount = null,
    Object? maxMemberCount = null,
  }) {
    return _then(_$JobPostingsItemModelImpl(
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
              as JobCategoryType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobPostingStatusType,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentMemberCount: null == currentMemberCount
          ? _value.currentMemberCount
          : currentMemberCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxMemberCount: null == maxMemberCount
          ? _value.maxMemberCount
          : maxMemberCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPostingsItemModelImpl implements _JobPostingsItemModel {
  const _$JobPostingsItemModelImpl(
      {required this.id,
      required this.title,
      required this.category,
      required this.status,
      required this.startDate,
      required this.endDate,
      required this.currentMemberCount,
      required this.maxMemberCount});

  factory _$JobPostingsItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPostingsItemModelImplFromJson(json);

  @override
  final String id;
// Id
  @override
  final String title;
// 공고명
  @override
  final JobCategoryType category;
// 직업 카테고리
  @override
  final JobPostingStatusType status;
// 상태값
  @override
  final DateTime startDate;
// 근무 시작 날짜
  @override
  final DateTime? endDate;
// 근무 종료 날짜
  @override
  final int currentMemberCount;
// 현재 모집 인원
  @override
  final int maxMemberCount;

  @override
  String toString() {
    return 'JobPostingsItemModel(id: $id, title: $title, category: $category, status: $status, startDate: $startDate, endDate: $endDate, currentMemberCount: $currentMemberCount, maxMemberCount: $maxMemberCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPostingsItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.currentMemberCount, currentMemberCount) ||
                other.currentMemberCount == currentMemberCount) &&
            (identical(other.maxMemberCount, maxMemberCount) ||
                other.maxMemberCount == maxMemberCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, category, status,
      startDate, endDate, currentMemberCount, maxMemberCount);

  /// Create a copy of JobPostingsItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPostingsItemModelImplCopyWith<_$JobPostingsItemModelImpl>
      get copyWith =>
          __$$JobPostingsItemModelImplCopyWithImpl<_$JobPostingsItemModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPostingsItemModelImplToJson(
      this,
    );
  }
}

abstract class _JobPostingsItemModel implements JobPostingsItemModel {
  const factory _JobPostingsItemModel(
      {required final String id,
      required final String title,
      required final JobCategoryType category,
      required final JobPostingStatusType status,
      required final DateTime startDate,
      required final DateTime? endDate,
      required final int currentMemberCount,
      required final int maxMemberCount}) = _$JobPostingsItemModelImpl;

  factory _JobPostingsItemModel.fromJson(Map<String, dynamic> json) =
      _$JobPostingsItemModelImpl.fromJson;

  @override
  String get id; // Id
  @override
  String get title; // 공고명
  @override
  JobCategoryType get category; // 직업 카테고리
  @override
  JobPostingStatusType get status; // 상태값
  @override
  DateTime get startDate; // 근무 시작 날짜
  @override
  DateTime? get endDate; // 근무 종료 날짜
  @override
  int get currentMemberCount; // 현재 모집 인원
  @override
  int get maxMemberCount;

  /// Create a copy of JobPostingsItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPostingsItemModelImplCopyWith<_$JobPostingsItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
