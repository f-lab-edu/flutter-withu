import 'dart:async';

import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

class AccountMockApi extends AccountApiImpl with MockAPI {
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
        LoginResponseDtoMock.success().toJson(),
        delay: const Duration(seconds: 1),
      ),
      data: requestData.toJson(),
    );

    return await super.login(requestData: requestData);
  }
}
