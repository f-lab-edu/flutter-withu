import 'package:dio/dio.dart';
import 'package:withu_app/core/core.dart';

extension FailResponseExt on FailResponse {
  static FailResponse fromException(dynamic exception) {
    if (exception is DioException) {
      final statusCode = exception.response?.statusCode;
      final message = exception.message ?? '';

      if (statusCode == null) {
        return FailResponse.error();
      }

      return FailResponse(
        status: statusCode,
        message: message,
      );
    }

    return FailResponse.error();
  }
}
