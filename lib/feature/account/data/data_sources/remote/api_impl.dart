import 'dart:async';
import 'package:withu_app/core/network/api_response.dart';
import 'package:withu_app/feature/account/data/data_sources/dto/dto.dart';
import 'api.dart';

class AccountApiImpl extends AccountApi {
  /// 로그인 API
  @override
  FutureOr<ApiResponse<LoginResponseDto>> login({
    required LoginRequestDto requestData,
  }) async {
    return dio
        .post(
          loginPath,
          data: requestData.toJson(),
        )
        .then((response) => ApiResponse.success(
              LoginResponseDto.fromJson(response.data),
            ))
        .catchError((_) => const ApiResponse<LoginResponseDto>.error());
  }
}
