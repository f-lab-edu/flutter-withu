// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(FailResponse failResponse) fail,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(FailResponse failResponse)? fail,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(FailResponse failResponse)? fail,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Fail<T> value) fail,
    required TResult Function(_Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Fail<T> value)? fail,
    TResult? Function(_Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_Fail<T> value)? fail,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements _Success<T> {
  const _$SuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ApiResponse<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(FailResponse failResponse) fail,
    required TResult Function() error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(FailResponse failResponse)? fail,
    TResult? Function()? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(FailResponse failResponse)? fail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Fail<T> value) fail,
    required TResult Function(_Error<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Fail<T> value)? fail,
    TResult? Function(_Error<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_Fail<T> value)? fail,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements ApiResponse<T> {
  const factory _Success(final T data) = _$SuccessImpl<T>;

  T get data;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailImplCopyWith<T, $Res> {
  factory _$$FailImplCopyWith(
          _$FailImpl<T> value, $Res Function(_$FailImpl<T>) then) =
      __$$FailImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({FailResponse failResponse});

  $FailResponseCopyWith<$Res> get failResponse;
}

/// @nodoc
class __$$FailImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$FailImpl<T>>
    implements _$$FailImplCopyWith<T, $Res> {
  __$$FailImplCopyWithImpl(
      _$FailImpl<T> _value, $Res Function(_$FailImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failResponse = null,
  }) {
    return _then(_$FailImpl<T>(
      null == failResponse
          ? _value.failResponse
          : failResponse // ignore: cast_nullable_to_non_nullable
              as FailResponse,
    ));
  }

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailResponseCopyWith<$Res> get failResponse {
    return $FailResponseCopyWith<$Res>(_value.failResponse, (value) {
      return _then(_value.copyWith(failResponse: value));
    });
  }
}

/// @nodoc

class _$FailImpl<T> implements _Fail<T> {
  const _$FailImpl(this.failResponse);

  @override
  final FailResponse failResponse;

  @override
  String toString() {
    return 'ApiResponse<$T>.fail(failResponse: $failResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailImpl<T> &&
            (identical(other.failResponse, failResponse) ||
                other.failResponse == failResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failResponse);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailImplCopyWith<T, _$FailImpl<T>> get copyWith =>
      __$$FailImplCopyWithImpl<T, _$FailImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(FailResponse failResponse) fail,
    required TResult Function() error,
  }) {
    return fail(failResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(FailResponse failResponse)? fail,
    TResult? Function()? error,
  }) {
    return fail?.call(failResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(FailResponse failResponse)? fail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(failResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Fail<T> value) fail,
    required TResult Function(_Error<T> value) error,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Fail<T> value)? fail,
    TResult? Function(_Error<T> value)? error,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_Fail<T> value)? fail,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Fail<T> implements ApiResponse<T> {
  const factory _Fail(final FailResponse failResponse) = _$FailImpl<T>;

  FailResponse get failResponse;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailImplCopyWith<T, _$FailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl<T> implements _Error<T> {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'ApiResponse<$T>.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(FailResponse failResponse) fail,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(FailResponse failResponse)? fail,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(FailResponse failResponse)? fail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(_Fail<T> value) fail,
    required TResult Function(_Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(_Fail<T> value)? fail,
    TResult? Function(_Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(_Fail<T> value)? fail,
    TResult Function(_Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements ApiResponse<T> {
  const factory _Error() = _$ErrorImpl<T>;
}

FailResponse _$FailResponseFromJson(Map<String, dynamic> json) {
  return _FailResponse.fromJson(json);
}

/// @nodoc
mixin _$FailResponse {
  int get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get devMessage => throw _privateConstructorUsedError;

  /// Serializes this FailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailResponseCopyWith<FailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailResponseCopyWith<$Res> {
  factory $FailResponseCopyWith(
          FailResponse value, $Res Function(FailResponse) then) =
      _$FailResponseCopyWithImpl<$Res, FailResponse>;
  @useResult
  $Res call({int status, String error, String message, String devMessage});
}

/// @nodoc
class _$FailResponseCopyWithImpl<$Res, $Val extends FailResponse>
    implements $FailResponseCopyWith<$Res> {
  _$FailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? message = null,
    Object? devMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      devMessage: null == devMessage
          ? _value.devMessage
          : devMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailResponseImplCopyWith<$Res>
    implements $FailResponseCopyWith<$Res> {
  factory _$$FailResponseImplCopyWith(
          _$FailResponseImpl value, $Res Function(_$FailResponseImpl) then) =
      __$$FailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String error, String message, String devMessage});
}

/// @nodoc
class __$$FailResponseImplCopyWithImpl<$Res>
    extends _$FailResponseCopyWithImpl<$Res, _$FailResponseImpl>
    implements _$$FailResponseImplCopyWith<$Res> {
  __$$FailResponseImplCopyWithImpl(
      _$FailResponseImpl _value, $Res Function(_$FailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? message = null,
    Object? devMessage = null,
  }) {
    return _then(_$FailResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      devMessage: null == devMessage
          ? _value.devMessage
          : devMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailResponseImpl implements _FailResponse {
  const _$FailResponseImpl(
      {required this.status,
      this.error = '',
      this.message = '',
      this.devMessage = ''});

  factory _$FailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailResponseImplFromJson(json);

  @override
  final int status;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String devMessage;

  @override
  String toString() {
    return 'FailResponse(status: $status, error: $error, message: $message, devMessage: $devMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.devMessage, devMessage) ||
                other.devMessage == devMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, error, message, devMessage);

  /// Create a copy of FailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailResponseImplCopyWith<_$FailResponseImpl> get copyWith =>
      __$$FailResponseImplCopyWithImpl<_$FailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FailResponseImplToJson(
      this,
    );
  }
}

abstract class _FailResponse implements FailResponse {
  const factory _FailResponse(
      {required final int status,
      final String error,
      final String message,
      final String devMessage}) = _$FailResponseImpl;

  factory _FailResponse.fromJson(Map<String, dynamic> json) =
      _$FailResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get error;
  @override
  String get message;
  @override
  String get devMessage;

  /// Create a copy of FailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailResponseImplCopyWith<_$FailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
