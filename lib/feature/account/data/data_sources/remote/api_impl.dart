import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/data/data_sources/dto/dto.dart';
import 'api.dart';

class AccountApiImpl extends AccountApi {
  final API api;

  AccountApiImpl({required this.api});

  /// 로그인 API
  @override
  FutureOr<ApiResponse<LoginResponseDto>> login({
    required LoginRequestDto requestData,
  }) async {
    return api.dio
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
