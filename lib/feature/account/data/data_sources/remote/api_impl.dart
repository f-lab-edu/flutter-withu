import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/data/data_sources/dto/dto.dart';
import 'api.dart';

class AccountApiImpl extends AccountApi {
  final DioNetwork network;

  AccountApiImpl({required this.network});

  /// 로그인 API
  @override
  FutureOr<ApiResponse<LoginResponseDto>> login({
    required LoginRequestDto requestData,
  }) async {
    return network.dio
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
