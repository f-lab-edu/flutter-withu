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
  FutureOr<ApiResponse<SendAuthCodeResponseDto>> sendAuthCode({
    required String phone,
  }) async {
    /// Mock 응답 등록
    dioAdapter.onPost(
      sendAuthCodePath,
      (server) => server.reply(
        200,
        SendAuthCodeResponseDtoMock.success().toJson(),
        delay: const Duration(seconds: 1),
      ),
      data: {phone: phone},
    );

    return await super.sendAuthCode(phone: phone);
  }

  /// 인증번호 검증
  @override
  FutureOr<ApiResponse<BaseResponseDto<bool>>> verifyAuthCode({
    required AuthCodeVerificationRequestDto dto,
  }) async {
    final isAuth = '111111' == dto.authCode;

    /// Mock 응답 등록
    dioAdapter.onPost(
      verifyAuthCodePath,
      (server) => server.reply(
        200,
        BaseResponseDtoMock.mock(isAuth).toJson((value) => value),
        delay: const Duration(seconds: 1),
      ),
      data: dto.toJson(),
    );

    return await super.verifyAuthCode(dto: dto);
  }

  /// 이메일 중복 검사 API
  @override
  FutureOr<ApiResponse<BaseResponseDto<bool>>> checkEmailDuplicate({
    required String email,
  }) async {
    final isDuplicate = email == 'test@test.com';

    /// Mock 응답 등록
    dioAdapter.onPost(
      checkEmailDuplicatePath,
      (server) => server.reply(
        200,
        BaseResponseDtoMock.mock(isDuplicate).toJson((value) => value),
        delay: const Duration(seconds: 1),
      ),
      data: {"loginId": email},
    );
    return super.checkEmailDuplicate(email: email);
  }

  /// 회원가입 API
  @override
  FutureOr<ApiResponse<SignUpResponseDto>> signUp({
    required SignUpRequestDto dto,
  }) async {
    /// Mock 응답 등록
    dioAdapter.onPost(
      signUpPath,
      (server) => server.reply(
        200,
        SignUpResponseDtoMock.success().toJson(
          (data) => data.toJson(),
        ),
        delay: const Duration(seconds: 1),
      ),
      data: dto.toJson(),
    );

    return await super.signUp(dto: dto);
  }

  /// 아이디 찾기
  @override
  FutureOr<ApiResponse<FindIdResponseDto>> findId({
    required FindIdRequestDto dto,
  }) async {
    /// Mock 응답 등록
    dioAdapter.onPost(
      findIdPath,
      (server) => server.reply(
        200,
        FindIdResponseDtoMock.success().toJson(
          (data) => data.toJson(),
        ),
        delay: const Duration(seconds: 1),
      ),
      data: dto.toJson(),
    );

    return super.findId(dto: dto);
  }
}
