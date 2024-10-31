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
}
