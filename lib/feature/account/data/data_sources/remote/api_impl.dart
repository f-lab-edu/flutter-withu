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
        .then(
          (response) => ApiResponse.success(
            LoginResponseDto.fromJson(response.data),
          ),
        )
        .catchError(
          (_) => ApiResponse<LoginResponseDto>.fail(
            FailResponse.error(),
          ),
        );
  }

  /// 인증번호 요청
  @override
  FutureOr<ApiResponse<VerifyPhoneResponseDto>> verifyPhone({
    required String phone,
  }) async {
    return network.dio
        .post(
          verifyPhonePath,
          data: {phone: phone},
        )
        .then(
          (response) => ApiResponse.success(
            VerifyPhoneResponseDto.fromJson(response.data),
          ),
        )
        .catchError(
          (_) => ApiResponse<VerifyPhoneResponseDto>.fail(
            FailResponse.error(),
          ),
        );
  }

  /// 인증번호 검증
  @override
  FutureOr<ApiResponse<BaseResponseDto<bool>>> verifyAuthCode({
    required AuthCodeVerificationRequestDto dto,
  }) async {
    return network.dio
        .post(
          verifyAuthCodePath,
          data: dto.toJson(),
        )
        .then(
          (response) => ApiResponse.success(
            BaseResponseDto.fromJson(
              response.data,
              (json) => json as bool,
            ),
          ),
        )
        .catchError(
          (_) => ApiResponse<BaseResponseDto<bool>>.fail(
            FailResponse.error(),
          ),
        );
  }
}
