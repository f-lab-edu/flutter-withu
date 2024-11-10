// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
  /// 상태.
  BaseBlocStatus get status => throw _privateConstructorUsedError;

  /// 다이얼로그 메시지
  String get message => throw _privateConstructorUsedError;

  /// 이름
  String get name => throw _privateConstructorUsedError;

  /// 이름 유효성 여부
  bool get isValidName => throw _privateConstructorUsedError;

  /// 생년월일
  String get birthDate => throw _privateConstructorUsedError;

  /// 생년월일 유효성 여부
  dynamic get isValidBirthDate => throw _privateConstructorUsedError;

  /// 생년월일
  GenderType get gender => throw _privateConstructorUsedError;

  /// 휴대폰 번호
  String get phone => throw _privateConstructorUsedError;

  /// 휴대폰 번호 유효성 여부
  bool get isValidPhone => throw _privateConstructorUsedError;

  /// 인증번호
  String get authNumber => throw _privateConstructorUsedError;

  /// 인증번호 유효성 여부
  bool get isValidAuthNumber => throw _privateConstructorUsedError;

  /// 이메일
  String get email => throw _privateConstructorUsedError;

  /// 이메일 유효성 여부
  bool get isValidEmail => throw _privateConstructorUsedError;

  /// 비밀번호
  String get password => throw _privateConstructorUsedError;

  /// 비밀번호 확인
  String get passwordConfirm => throw _privateConstructorUsedError;

  /// 비밀번호 유효성 여부
  bool get isValidPassword => throw _privateConstructorUsedError;

  /// 회원가입 버튼 Enabled 여부
  bool get isEnabledSubmit => throw _privateConstructorUsedError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {BaseBlocStatus status,
      String message,
      String name,
      bool isValidName,
      String birthDate,
      dynamic isValidBirthDate,
      GenderType gender,
      String phone,
      bool isValidPhone,
      String authNumber,
      bool isValidAuthNumber,
      String email,
      bool isValidEmail,
      String password,
      String passwordConfirm,
      bool isValidPassword,
      bool isEnabledSubmit});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? name = null,
    Object? isValidName = null,
    Object? birthDate = null,
    Object? isValidBirthDate = freezed,
    Object? gender = null,
    Object? phone = null,
    Object? isValidPhone = null,
    Object? authNumber = null,
    Object? isValidAuthNumber = null,
    Object? email = null,
    Object? isValidEmail = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? isValidPassword = null,
    Object? isEnabledSubmit = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseBlocStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isValidName: null == isValidName
          ? _value.isValidName
          : isValidName // ignore: cast_nullable_to_non_nullable
              as bool,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      isValidBirthDate: freezed == isValidBirthDate
          ? _value.isValidBirthDate
          : isValidBirthDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isValidPhone: null == isValidPhone
          ? _value.isValidPhone
          : isValidPhone // ignore: cast_nullable_to_non_nullable
              as bool,
      authNumber: null == authNumber
          ? _value.authNumber
          : authNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isValidAuthNumber: null == isValidAuthNumber
          ? _value.isValidAuthNumber
          : isValidAuthNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isValidEmail: null == isValidEmail
          ? _value.isValidEmail
          : isValidEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      isValidPassword: null == isValidPassword
          ? _value.isValidPassword
          : isValidPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabledSubmit: null == isEnabledSubmit
          ? _value.isEnabledSubmit
          : isEnabledSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseBlocStatus status,
      String message,
      String name,
      bool isValidName,
      String birthDate,
      dynamic isValidBirthDate,
      GenderType gender,
      String phone,
      bool isValidPhone,
      String authNumber,
      bool isValidAuthNumber,
      String email,
      bool isValidEmail,
      String password,
      String passwordConfirm,
      bool isValidPassword,
      bool isEnabledSubmit});
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? name = null,
    Object? isValidName = null,
    Object? birthDate = null,
    Object? isValidBirthDate = freezed,
    Object? gender = null,
    Object? phone = null,
    Object? isValidPhone = null,
    Object? authNumber = null,
    Object? isValidAuthNumber = null,
    Object? email = null,
    Object? isValidEmail = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? isValidPassword = null,
    Object? isEnabledSubmit = null,
  }) {
    return _then(_$SignUpStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseBlocStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isValidName: null == isValidName
          ? _value.isValidName
          : isValidName // ignore: cast_nullable_to_non_nullable
              as bool,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      isValidBirthDate: freezed == isValidBirthDate
          ? _value.isValidBirthDate!
          : isValidBirthDate,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isValidPhone: null == isValidPhone
          ? _value.isValidPhone
          : isValidPhone // ignore: cast_nullable_to_non_nullable
              as bool,
      authNumber: null == authNumber
          ? _value.authNumber
          : authNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isValidAuthNumber: null == isValidAuthNumber
          ? _value.isValidAuthNumber
          : isValidAuthNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isValidEmail: null == isValidEmail
          ? _value.isValidEmail
          : isValidEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      isValidPassword: null == isValidPassword
          ? _value.isValidPassword
          : isValidPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabledSubmit: null == isEnabledSubmit
          ? _value.isEnabledSubmit
          : isEnabledSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  _$SignUpStateImpl(
      {required this.status,
      this.message = '',
      this.name = '',
      this.isValidName = false,
      this.birthDate = '',
      this.isValidBirthDate = false,
      this.gender = GenderType.none,
      this.phone = '',
      this.isValidPhone = false,
      this.authNumber = '',
      this.isValidAuthNumber = false,
      this.email = '',
      this.isValidEmail = false,
      this.password = '',
      this.passwordConfirm = '',
      this.isValidPassword = false,
      this.isEnabledSubmit = false});

  /// 상태.
  @override
  final BaseBlocStatus status;

  /// 다이얼로그 메시지
  @override
  @JsonKey()
  final String message;

  /// 이름
  @override
  @JsonKey()
  final String name;

  /// 이름 유효성 여부
  @override
  @JsonKey()
  final bool isValidName;

  /// 생년월일
  @override
  @JsonKey()
  final String birthDate;

  /// 생년월일 유효성 여부
  @override
  @JsonKey()
  final dynamic isValidBirthDate;

  /// 생년월일
  @override
  @JsonKey()
  final GenderType gender;

  /// 휴대폰 번호
  @override
  @JsonKey()
  final String phone;

  /// 휴대폰 번호 유효성 여부
  @override
  @JsonKey()
  final bool isValidPhone;

  /// 인증번호
  @override
  @JsonKey()
  final String authNumber;

  /// 인증번호 유효성 여부
  @override
  @JsonKey()
  final bool isValidAuthNumber;

  /// 이메일
  @override
  @JsonKey()
  final String email;

  /// 이메일 유효성 여부
  @override
  @JsonKey()
  final bool isValidEmail;

  /// 비밀번호
  @override
  @JsonKey()
  final String password;

  /// 비밀번호 확인
  @override
  @JsonKey()
  final String passwordConfirm;

  /// 비밀번호 유효성 여부
  @override
  @JsonKey()
  final bool isValidPassword;

  /// 회원가입 버튼 Enabled 여부
  @override
  @JsonKey()
  final bool isEnabledSubmit;

  @override
  String toString() {
    return 'SignUpState(status: $status, message: $message, name: $name, isValidName: $isValidName, birthDate: $birthDate, isValidBirthDate: $isValidBirthDate, gender: $gender, phone: $phone, isValidPhone: $isValidPhone, authNumber: $authNumber, isValidAuthNumber: $isValidAuthNumber, email: $email, isValidEmail: $isValidEmail, password: $password, passwordConfirm: $passwordConfirm, isValidPassword: $isValidPassword, isEnabledSubmit: $isEnabledSubmit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isValidName, isValidName) ||
                other.isValidName == isValidName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            const DeepCollectionEquality()
                .equals(other.isValidBirthDate, isValidBirthDate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isValidPhone, isValidPhone) ||
                other.isValidPhone == isValidPhone) &&
            (identical(other.authNumber, authNumber) ||
                other.authNumber == authNumber) &&
            (identical(other.isValidAuthNumber, isValidAuthNumber) ||
                other.isValidAuthNumber == isValidAuthNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isValidEmail, isValidEmail) ||
                other.isValidEmail == isValidEmail) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm) &&
            (identical(other.isValidPassword, isValidPassword) ||
                other.isValidPassword == isValidPassword) &&
            (identical(other.isEnabledSubmit, isEnabledSubmit) ||
                other.isEnabledSubmit == isEnabledSubmit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      name,
      isValidName,
      birthDate,
      const DeepCollectionEquality().hash(isValidBirthDate),
      gender,
      phone,
      isValidPhone,
      authNumber,
      isValidAuthNumber,
      email,
      isValidEmail,
      password,
      passwordConfirm,
      isValidPassword,
      isEnabledSubmit);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  factory _SignUpState(
      {required final BaseBlocStatus status,
      final String message,
      final String name,
      final bool isValidName,
      final String birthDate,
      final dynamic isValidBirthDate,
      final GenderType gender,
      final String phone,
      final bool isValidPhone,
      final String authNumber,
      final bool isValidAuthNumber,
      final String email,
      final bool isValidEmail,
      final String password,
      final String passwordConfirm,
      final bool isValidPassword,
      final bool isEnabledSubmit}) = _$SignUpStateImpl;

  /// 상태.
  @override
  BaseBlocStatus get status;

  /// 다이얼로그 메시지
  @override
  String get message;

  /// 이름
  @override
  String get name;

  /// 이름 유효성 여부
  @override
  bool get isValidName;

  /// 생년월일
  @override
  String get birthDate;

  /// 생년월일 유효성 여부
  @override
  dynamic get isValidBirthDate;

  /// 생년월일
  @override
  GenderType get gender;

  /// 휴대폰 번호
  @override
  String get phone;

  /// 휴대폰 번호 유효성 여부
  @override
  bool get isValidPhone;

  /// 인증번호
  @override
  String get authNumber;

  /// 인증번호 유효성 여부
  @override
  bool get isValidAuthNumber;

  /// 이메일
  @override
  String get email;

  /// 이메일 유효성 여부
  @override
  bool get isValidEmail;

  /// 비밀번호
  @override
  String get password;

  /// 비밀번호 확인
  @override
  String get passwordConfirm;

  /// 비밀번호 유효성 여부
  @override
  bool get isValidPassword;

  /// 회원가입 버튼 Enabled 여부
  @override
  bool get isEnabledSubmit;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
