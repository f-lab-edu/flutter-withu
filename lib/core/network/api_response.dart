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
    @Default('') String error,
    @Default('') String message,
    @Default('') String devMessage,
  }) = _FailResponse;

  factory FailResponse.fromJson(Map<String, dynamic> json) =>
      _$FailResponseFromJson(json);

  /// 서버 에러 시.
  factory FailResponse.error() => const FailResponse(
        status: 500,
        message: '서버 에러',
      );
}

extension ApiResponseExt on ApiResponse {
  bool get isSuccess => maybeWhen(
        success: (_) => true,
        orElse: () => false,
      );

  bool get isFail => maybeWhen(
        fail: (_) => true,
        orElse: () => false,
      );

  bool get isError => maybeWhen(
        error: () => true,
        orElse: () => false,
      );
}
