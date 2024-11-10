// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpRequestDto _$SignUpRequestDtoFromJson(Map<String, dynamic> json) {
  return _SignUpRequestDto.fromJson(json);
}

/// @nodoc
mixin _$SignUpRequestDto {
  String get name => throw _privateConstructorUsedError;
  String get birth => throw _privateConstructorUsedError;
  String get cellPhoneNo => throw _privateConstructorUsedError;
  String get loginId => throw _privateConstructorUsedError; // 이메일
  String get password => throw _privateConstructorUsedError;
  LoginType get type => throw _privateConstructorUsedError;
  GenderType get gender => throw _privateConstructorUsedError;

  /// Serializes this SignUpRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpRequestDtoCopyWith<SignUpRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestDtoCopyWith<$Res> {
  factory $SignUpRequestDtoCopyWith(
          SignUpRequestDto value, $Res Function(SignUpRequestDto) then) =
      _$SignUpRequestDtoCopyWithImpl<$Res, SignUpRequestDto>;
  @useResult
  $Res call(
      {String name,
      String birth,
      String cellPhoneNo,
      String loginId,
      String password,
      LoginType type,
      GenderType gender});
}

/// @nodoc
class _$SignUpRequestDtoCopyWithImpl<$Res, $Val extends SignUpRequestDto>
    implements $SignUpRequestDtoCopyWith<$Res> {
  _$SignUpRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birth = null,
    Object? cellPhoneNo = null,
    Object? loginId = null,
    Object? password = null,
    Object? type = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
      cellPhoneNo: null == cellPhoneNo
          ? _value.cellPhoneNo
          : cellPhoneNo // ignore: cast_nullable_to_non_nullable
              as String,
      loginId: null == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LoginType,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpRequestDtoImplCopyWith<$Res>
    implements $SignUpRequestDtoCopyWith<$Res> {
  factory _$$SignUpRequestDtoImplCopyWith(_$SignUpRequestDtoImpl value,
          $Res Function(_$SignUpRequestDtoImpl) then) =
      __$$SignUpRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String birth,
      String cellPhoneNo,
      String loginId,
      String password,
      LoginType type,
      GenderType gender});
}

/// @nodoc
class __$$SignUpRequestDtoImplCopyWithImpl<$Res>
    extends _$SignUpRequestDtoCopyWithImpl<$Res, _$SignUpRequestDtoImpl>
    implements _$$SignUpRequestDtoImplCopyWith<$Res> {
  __$$SignUpRequestDtoImplCopyWithImpl(_$SignUpRequestDtoImpl _value,
      $Res Function(_$SignUpRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? birth = null,
    Object? cellPhoneNo = null,
    Object? loginId = null,
    Object? password = null,
    Object? type = null,
    Object? gender = null,
  }) {
    return _then(_$SignUpRequestDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
      cellPhoneNo: null == cellPhoneNo
          ? _value.cellPhoneNo
          : cellPhoneNo // ignore: cast_nullable_to_non_nullable
              as String,
      loginId: null == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LoginType,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpRequestDtoImpl implements _SignUpRequestDto {
  _$SignUpRequestDtoImpl(
      {required this.name,
      required this.birth,
      required this.cellPhoneNo,
      required this.loginId,
      required this.password,
      required this.type,
      required this.gender});

  factory _$SignUpRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpRequestDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String birth;
  @override
  final String cellPhoneNo;
  @override
  final String loginId;
// 이메일
  @override
  final String password;
  @override
  final LoginType type;
  @override
  final GenderType gender;

  @override
  String toString() {
    return 'SignUpRequestDto(name: $name, birth: $birth, cellPhoneNo: $cellPhoneNo, loginId: $loginId, password: $password, type: $type, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.cellPhoneNo, cellPhoneNo) ||
                other.cellPhoneNo == cellPhoneNo) &&
            (identical(other.loginId, loginId) || other.loginId == loginId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, birth, cellPhoneNo, loginId, password, type, gender);

  /// Create a copy of SignUpRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestDtoImplCopyWith<_$SignUpRequestDtoImpl> get copyWith =>
      __$$SignUpRequestDtoImplCopyWithImpl<_$SignUpRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _SignUpRequestDto implements SignUpRequestDto {
  factory _SignUpRequestDto(
      {required final String name,
      required final String birth,
      required final String cellPhoneNo,
      required final String loginId,
      required final String password,
      required final LoginType type,
      required final GenderType gender}) = _$SignUpRequestDtoImpl;

  factory _SignUpRequestDto.fromJson(Map<String, dynamic> json) =
      _$SignUpRequestDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get birth;
  @override
  String get cellPhoneNo;
  @override
  String get loginId; // 이메일
  @override
  String get password;
  @override
  LoginType get type;
  @override
  GenderType get gender;

  /// Create a copy of SignUpRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpRequestDtoImplCopyWith<_$SignUpRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
