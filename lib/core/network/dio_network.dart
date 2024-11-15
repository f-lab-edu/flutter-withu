import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:withu_app/feature/account/account.dart';


class DioNetwork {
  final String url = 'https://example.com';

  late final _dio = Dio(BaseOptions(
    baseUrl: url,
    contentType: 'application/json',
    responseType: ResponseType.json,
  ))
    ..interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final preference = await SharedPreferences.getInstance();
        final sessionId = preference.getString(
          AccountStorageKey.sessionId.name,
        );
        options.headers['sessionId'] = sessionId ?? '';
        return handler.next(options);
      },
    ))
    ..interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        // enabled: kDebugMode,
      ),
    );

  Dio get dio => _dio;
}
