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
        LoginResponseDtoMock.success().toJson(),
        delay: const Duration(seconds: 1),
      ),
      data: requestData.toJson(),
    );

    return await super.login(requestData: requestData);
  }
}
