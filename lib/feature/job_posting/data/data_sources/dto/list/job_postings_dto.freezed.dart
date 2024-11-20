// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_postings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobPostingsDto _$JobPostingsDtoFromJson(Map<String, dynamic> json) {
  return _JobPostingsDto.fromJson(json);
}

/// @nodoc
mixin _$JobPostingsDto {
  List<JobPostingsItemDto> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  /// Serializes this JobPostingsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobPostingsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobPostingsDtoCopyWith<JobPostingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobPostingsDtoCopyWith<$Res> {
  factory $JobPostingsDtoCopyWith(
          JobPostingsDto value, $Res Function(JobPostingsDto) then) =
      _$JobPostingsDtoCopyWithImpl<$Res, JobPostingsDto>;
  @useResult
  $Res call(
      {List<JobPostingsItemDto> content,
      int totalPages,
      int totalElements,
      int size,
      int number});
}

/// @nodoc
class _$JobPostingsDtoCopyWithImpl<$Res, $Val extends JobPostingsDto>
    implements $JobPostingsDtoCopyWith<$Res> {
  _$JobPostingsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobPostingsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? totalPages = null,
    Object? totalElements = null,
    Object? size = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<JobPostingsItemDto>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobPostingsDtoImplCopyWith<$Res>
    implements $JobPostingsDtoCopyWith<$Res> {
  factory _$$JobPostingsDtoImplCopyWith(_$JobPostingsDtoImpl value,
          $Res Function(_$JobPostingsDtoImpl) then) =
      __$$JobPostingsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<JobPostingsItemDto> content,
      int totalPages,
      int totalElements,
      int size,
      int number});
}

/// @nodoc
class __$$JobPostingsDtoImplCopyWithImpl<$Res>
    extends _$JobPostingsDtoCopyWithImpl<$Res, _$JobPostingsDtoImpl>
    implements _$$JobPostingsDtoImplCopyWith<$Res> {
  __$$JobPostingsDtoImplCopyWithImpl(
      _$JobPostingsDtoImpl _value, $Res Function(_$JobPostingsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobPostingsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? totalPages = null,
    Object? totalElements = null,
    Object? size = null,
    Object? number = null,
  }) {
    return _then(_$JobPostingsDtoImpl(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<JobPostingsItemDto>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobPostingsDtoImpl implements _JobPostingsDto {
  const _$JobPostingsDtoImpl(
      {required final List<JobPostingsItemDto> content,
      required this.totalPages,
      required this.totalElements,
      required this.size,
      required this.number})
      : _content = content;

  factory _$JobPostingsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobPostingsDtoImplFromJson(json);

  final List<JobPostingsItemDto> _content;
  @override
  List<JobPostingsItemDto> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final int totalPages;
  @override
  final int totalElements;
  @override
  final int size;
  @override
  final int number;

  @override
  String toString() {
    return 'JobPostingsDto(content: $content, totalPages: $totalPages, totalElements: $totalElements, size: $size, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobPostingsDtoImpl &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      totalPages,
      totalElements,
      size,
      number);

  /// Create a copy of JobPostingsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobPostingsDtoImplCopyWith<_$JobPostingsDtoImpl> get copyWith =>
      __$$JobPostingsDtoImplCopyWithImpl<_$JobPostingsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobPostingsDtoImplToJson(
      this,
    );
  }
}

abstract class _JobPostingsDto implements JobPostingsDto {
  const factory _JobPostingsDto(
      {required final List<JobPostingsItemDto> content,
      required final int totalPages,
      required final int totalElements,
      required final int size,
      required final int number}) = _$JobPostingsDtoImpl;

  factory _JobPostingsDto.fromJson(Map<String, dynamic> json) =
      _$JobPostingsDtoImpl.fromJson;

  @override
  List<JobPostingsItemDto> get content;
  @override
  int get totalPages;
  @override
  int get totalElements;
  @override
  int get size;
  @override
  int get number;

  /// Create a copy of JobPostingsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobPostingsDtoImplCopyWith<_$JobPostingsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
