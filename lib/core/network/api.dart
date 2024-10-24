import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class API {
  final String url = 'https://example.com';

  late final _dio = Dio(BaseOptions(
    baseUrl: url,
    contentType: 'application/json',
    responseType: ResponseType.json,
  ))
    ..interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        responseBody: true,
        // enabled: kDebugMode,
      ),
    );

  Dio get dio => _dio;
}
