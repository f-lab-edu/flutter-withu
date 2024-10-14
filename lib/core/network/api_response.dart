import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

part 'api_response.g.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.success(T data) = _Success<T>;

  const factory ApiResponse.fail(FailResponse failResponse) = _Fail;

  const factory ApiResponse.error() = _Error;
}

@freezed
abstract class FailResponse with _$FailResponse {
  const factory FailResponse({
    required int status,
    required String error,
    required String message,
    required String devMessage,
  }) = _FailResponse;

  factory FailResponse.fromJson(Map<String, dynamic> json) =>
      _$FailResponseFromJson(json);
}
