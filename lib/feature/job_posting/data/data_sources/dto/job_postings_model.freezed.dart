// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_postings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobPostingsModel _$JobPostingsModelFromJson(Map<String, dynamic> json) {
  return _JobPostingsModel.fromJson(json);
}

/// @nodoc
mixin _$JobPostingsModel {
  List<JobPostingModel>? get contents => throw _privateConstructorUsedError;

  /// Serializes this JobPostingsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobPostingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPostingsModelCopyWith<JobPostingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPostingsModelCopyWith<$Res> {
  factory $JobPostingsModelCopyWith(
          JobPostingsModel value, $Res Function(JobPostingsModel) then) =
      _$JobPostingsModelCopyWithImpl<$Res, JobPostingsModel>;
  @useResult
  $Res call({List<JobPostingModel>? contents});
}

/// @nodoc
class _$JobPostingsModelCopyWithImpl<$Res, $Val extends JobPostingsModel>
    implements $JobPostingsModelCopyWith<$Res> {
  _$JobPostingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPostingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = freezed,
  }) {
    return _then(_value.copyWith(
      contents: freezed == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<JobPostingModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPostingsModelImplCopyWith<$Res>
    implements $JobPostingsModelCopyWith<$Res> {
  factory _$$JobPostingsModelImplCopyWith(_$JobPostingsModelImpl value,
          $Res Function(_$JobPostingsModelImpl) then) =
      __$$JobPostingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<JobPostingModel>? contents});
}

/// @nodoc
class __$$JobPostingsModelImplCopyWithImpl<$Res>
    extends _$JobPostingsModelCopyWithImpl<$Res, _$JobPostingsModelImpl>
    implements _$$JobPostingsModelImplCopyWith<$Res> {
  __$$JobPostingsModelImplCopyWithImpl(_$JobPostingsModelImpl _value,
      $Res Function(_$JobPostingsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPostingsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = freezed,
  }) {
    return _then(_$JobPostingsModelImpl(
      contents: freezed == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<JobPostingModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPostingsModelImpl implements _JobPostingsModel {
  const _$JobPostingsModelImpl({required final List<JobPostingModel>? contents})
      : _contents = contents;

  factory _$JobPostingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPostingsModelImplFromJson(json);

  final List<JobPostingModel>? _contents;
  @override
  List<JobPostingModel>? get contents {
    final value = _contents;
    if (value == null) return null;
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'JobPostingsModel(contents: $contents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPostingsModelImpl &&
            const DeepCollectionEquality().equals(other._contents, _contents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contents));

  /// Create a copy of JobPostingsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPostingsModelImplCopyWith<_$JobPostingsModelImpl> get copyWith =>
      __$$JobPostingsModelImplCopyWithImpl<_$JobPostingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPostingsModelImplToJson(
      this,
    );
  }
}

abstract class _JobPostingsModel implements JobPostingsModel {
  const factory _JobPostingsModel(
          {required final List<JobPostingModel>? contents}) =
      _$JobPostingsModelImpl;

  factory _JobPostingsModel.fromJson(Map<String, dynamic> json) =
      _$JobPostingsModelImpl.fromJson;

  @override
  List<JobPostingModel>? get contents;

  /// Create a copy of JobPostingsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPostingsModelImplCopyWith<_$JobPostingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
