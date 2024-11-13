import 'dart:async';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

class AccountMockApi extends AccountApiImpl {
  late final DioAdapter dioAdapter;

  AccountMockApi({required super.network}) {
    dioAdapter = DioAdapter(dio: network.dio);
  }

  /// 로그인 API
  @override
  FutureOr<ApiResponse<LoginResponseDto>> login({
    required LoginRequestDto requestData,
  }) async {
    /// Mock 응답 등록
    dioAdapter.onPost(
      loginPath,
      (server) => server.reply(
        200,
        LoginResponseDtoMock.failure().toJson(),
        delay: const Duration(seconds: 1),
      ),
      data: requestData.toJson(),
    );

    return await super.login(requestData: requestData);
  }

  /// 인증번호 요청
  @override
  FutureOr<ApiResponse<VerifyPhoneResponseDto>> verifyPhone({
    required String phone,
  }) async {
    /// Mock 응답 등록
    dioAdapter.onPost(
      loginPath,
      (server) => server.reply(
        200,
        VerifyPhoneResponseDtoMock.success().toJson(),
        delay: const Duration(seconds: 1),
      ),
      data: {phone: phone},
    );

    return await super.verifyPhone(phone: phone);
  }

  /// 인증번호 검증
  @override
  FutureOr<ApiResponse<BaseResponseDto<bool>>> verifyAuthCode({
    required AuthCodeVerificationRequestDto dto,
  }) async {
    /// Mock 응답 등록
    dioAdapter.onPost(
      verifyAuthCodePath,
      (server) => server.reply(
        200,
        BaseResponseDtoMock.mock(true),
        delay: const Duration(seconds: 1),
      ),
      data: dto.toJson(),
    );

    return await super.verifyAuthCode(dto: dto);
  }
}
