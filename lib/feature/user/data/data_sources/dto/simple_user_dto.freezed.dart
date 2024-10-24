// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimpleUserDto _$SimpleUserDtoFromJson(Map<String, dynamic> json) {
  return _SimpleUserDto.fromJson(json);
}

/// @nodoc
mixin _$SimpleUserDto {
  String get id => throw _privateConstructorUsedError; // id
  String get name => throw _privateConstructorUsedError; // 이름
  int get age => throw _privateConstructorUsedError; // 나이
  String get profile => throw _privateConstructorUsedError;

  /// Serializes this SimpleUserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimpleUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimpleUserDtoCopyWith<SimpleUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleUserDtoCopyWith<$Res> {
  factory $SimpleUserDtoCopyWith(
          SimpleUserDto value, $Res Function(SimpleUserDto) then) =
      _$SimpleUserDtoCopyWithImpl<$Res, SimpleUserDto>;
  @useResult
  $Res call({String id, String name, int age, String profile});
}

/// @nodoc
class _$SimpleUserDtoCopyWithImpl<$Res, $Val extends SimpleUserDto>
    implements $SimpleUserDtoCopyWith<$Res> {
  _$SimpleUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimpleUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleUserDtoImplCopyWith<$Res>
    implements $SimpleUserDtoCopyWith<$Res> {
  factory _$$SimpleUserDtoImplCopyWith(
          _$SimpleUserDtoImpl value, $Res Function(_$SimpleUserDtoImpl) then) =
      __$$SimpleUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int age, String profile});
}

/// @nodoc
class __$$SimpleUserDtoImplCopyWithImpl<$Res>
    extends _$SimpleUserDtoCopyWithImpl<$Res, _$SimpleUserDtoImpl>
    implements _$$SimpleUserDtoImplCopyWith<$Res> {
  __$$SimpleUserDtoImplCopyWithImpl(
      _$SimpleUserDtoImpl _value, $Res Function(_$SimpleUserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? age = null,
    Object? profile = null,
  }) {
    return _then(_$SimpleUserDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleUserDtoImpl implements _SimpleUserDto {
  _$SimpleUserDtoImpl(
      {required this.id,
      required this.name,
      required this.age,
      required this.profile});

  factory _$SimpleUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleUserDtoImplFromJson(json);

  @override
  final String id;
// id
  @override
  final String name;
// 이름
  @override
  final int age;
// 나이
  @override
  final String profile;

  @override
  String toString() {
    return 'SimpleUserDto(id: $id, name: $name, age: $age, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleUserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, age, profile);

  /// Create a copy of SimpleUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleUserDtoImplCopyWith<_$SimpleUserDtoImpl> get copyWith =>
      __$$SimpleUserDtoImplCopyWithImpl<_$SimpleUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleUserDtoImplToJson(
      this,
    );
  }
}

abstract class _SimpleUserDto implements SimpleUserDto {
  factory _SimpleUserDto(
      {required final String id,
      required final String name,
      required final int age,
      required final String profile}) = _$SimpleUserDtoImpl;

  factory _SimpleUserDto.fromJson(Map<String, dynamic> json) =
      _$SimpleUserDtoImpl.fromJson;

  @override
  String get id; // id
  @override
  String get name; // 이름
  @override
  int get age; // 나이
  @override
  String get profile;

  /// Create a copy of SimpleUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleUserDtoImplCopyWith<_$SimpleUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
