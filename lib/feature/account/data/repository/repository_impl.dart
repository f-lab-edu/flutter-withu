import 'dart:async';

import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

class AccountRepositoryImpl implements AccountRepository {
  @override
  final AccountStorage accountStorage;

  @override
  final AccountApi accountApi;

  AccountRepositoryImpl({
    required this.accountApi,
    required this.accountStorage,
  });

  /// 로그인 API 호출
  @override
  FutureOr<ApiResponse<LoginResponseDto>> login({
    required LoginRequestDto requestData,
  }) async {
    return await accountApi.login(requestData: requestData);
  }

  /// Session Id Storage 에 저장
  @override
  void storeSessionId({
    required String id,
  }) {
    accountStorage.setSessionId(id: id);
  }

  /// Session Id Storage 에 조회
  @override
  Future<String> getSessionId() async {
    return await accountStorage.getSessionId();
  }

  /// 휴대폰 인증번호 발송 요청
  @override
  Future<ApiResponse<SendAuthCodeResponseDto>> sendAuthCode({
    required String phone,
  }) async {
    return await accountApi.sendAuthCode(phone: phone);
  }

  /// 인증번호 검증
  @override
  Future<ApiResponse<BaseResponseDto<bool>>> authCodeVerification({
    required AuthCodeVerificationRequestDto dto,
  }) async {
    return await accountApi.verifyAuthCode(dto: dto);
  }

  /// 이메일 중복 검사
  @override
  Future<ApiResponse<BaseResponseDto<bool>>> checkEmailDuplicate({
    required String email,
  }) async {
    return await accountApi.checkEmailDuplicate(email: email);
  }

  /// 회원가입
  @override
  Future<ApiResponse<SignUpResponseDto>> signUp({
    required SignUpRequestDto dto,
  }) async {
    return await accountApi.signUp(dto: dto);
  }

  /// 아이디 찾기
  @override
  Future<ApiResponse<FindIdResponseDto>> findId({
    required FindIdRequestDto dto,
  }) async {
    return await accountApi.findId(dto: dto);
  }
}
