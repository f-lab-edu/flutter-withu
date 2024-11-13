import 'dart:async';

import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/data/data.dart';

abstract class AccountRepository {
  final AccountStorage accountStorage;

  final AccountApi accountApi;

  AccountRepository({
    required this.accountApi,
    required this.accountStorage,
  });

  /// 로그인 API 호출
  FutureOr<ApiResponse<LoginResponseDto>> login({
    required LoginRequestDto requestData,
  });

  /// Session Id Storage 에 저장
  void storeSessionId({
    required String id,
  });

  /// Session Id Storage 에 조회
  Future<String> getSessionId();

  /// 휴대폰 인증번호 발송 요청
  Future<ApiResponse<VerifyPhoneResponseDto>> requestPhoneVerification({
    required String phone,
  });

  /// 인증번호 검증
  Future<ApiResponse<BaseResponseDto<bool>>> authCodeVerification({
    required AuthCodeVerificationRequestDto dto,
  });
}
