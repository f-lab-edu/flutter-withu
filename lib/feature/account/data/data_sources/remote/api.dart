import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/data/data_sources/dto/dto.dart';

abstract class AccountApi {
  /// API 주소
  final path = "/api/account";

  /// 로그인 주소
  late final loginPath = '$path/login';

  /// 휴대폰 인증 요청 주소
  late final verifyPhonePath = '$path/verify/phone';

  /// 인증번호 검증 요청
  late final verifyAuthCodePath = '$path/verify/code';

  /// 로그인 API
  FutureOr<ApiResponse<LoginResponseDto>> login({
    required LoginRequestDto requestData,
  });

  /// 인증번호 요청 API
  FutureOr<ApiResponse<VerifyPhoneResponseDto>> verifyPhone({
    required String phone,
  });

  /// 인증번호 검증 API
  FutureOr<ApiResponse<BaseResponseDto<bool>>> verifyAuthCode({
    required AuthCodeVerificationRequestDto dto,
  });
}
