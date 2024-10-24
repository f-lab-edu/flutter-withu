// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationDto<T> _$PaginationDtoFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginationDto<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginationDto<T> {
  List<T> get content => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  /// Serializes this PaginationDto to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaginationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationDtoCopyWith<T, PaginationDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDtoCopyWith<T, $Res> {
  factory $PaginationDtoCopyWith(
          PaginationDto<T> value, $Res Function(PaginationDto<T>) then) =
      _$PaginationDtoCopyWithImpl<T, $Res, PaginationDto<T>>;
  @useResult
  $Res call(
      {List<T> content,
      int totalPages,
      int totalElements,
      int size,
      int number});
}

/// @nodoc
class _$PaginationDtoCopyWithImpl<T, $Res, $Val extends PaginationDto<T>>
    implements $PaginationDtoCopyWith<T, $Res> {
  _$PaginationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationDto
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
              as List<T>,
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
abstract class _$$PaginationDtoImplCopyWith<T, $Res>
    implements $PaginationDtoCopyWith<T, $Res> {
  factory _$$PaginationDtoImplCopyWith(_$PaginationDtoImpl<T> value,
          $Res Function(_$PaginationDtoImpl<T>) then) =
      __$$PaginationDtoImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> content,
      int totalPages,
      int totalElements,
      int size,
      int number});
}

/// @nodoc
class __$$PaginationDtoImplCopyWithImpl<T, $Res>
    extends _$PaginationDtoCopyWithImpl<T, $Res, _$PaginationDtoImpl<T>>
    implements _$$PaginationDtoImplCopyWith<T, $Res> {
  __$$PaginationDtoImplCopyWithImpl(_$PaginationDtoImpl<T> _value,
      $Res Function(_$PaginationDtoImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginationDto
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
    return _then(_$PaginationDtoImpl<T>(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
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
@JsonSerializable(genericArgumentFactories: true)
class _$PaginationDtoImpl<T> implements _PaginationDto<T> {
  _$PaginationDtoImpl(
      {required final List<T> content,
      required this.totalPages,
      required this.totalElements,
      required this.size,
      required this.number})
      : _content = content;

  factory _$PaginationDtoImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginationDtoImplFromJson(json, fromJsonT);

  final List<T> _content;
  @override
  List<T> get content {
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
    return 'PaginationDto<$T>(content: $content, totalPages: $totalPages, totalElements: $totalElements, size: $size, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationDtoImpl<T> &&
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

  /// Create a copy of PaginationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationDtoImplCopyWith<T, _$PaginationDtoImpl<T>> get copyWith =>
      __$$PaginationDtoImplCopyWithImpl<T, _$PaginationDtoImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginationDtoImplToJson<T>(this, toJsonT);
  }
}

abstract class _PaginationDto<T> implements PaginationDto<T> {
  factory _PaginationDto(
      {required final List<T> content,
      required final int totalPages,
      required final int totalElements,
      required final int size,
      required final int number}) = _$PaginationDtoImpl<T>;

  factory _PaginationDto.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginationDtoImpl<T>.fromJson;

  @override
  List<T> get content;
  @override
  int get totalPages;
  @override
  int get totalElements;
  @override
  int get size;
  @override
  int get number;

  /// Create a copy of PaginationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationDtoImplCopyWith<T, _$PaginationDtoImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
