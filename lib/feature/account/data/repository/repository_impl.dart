import 'dart:async';

import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

class AccountRepositoryImpl implements AccountRepository {
  @override
  final AccountApi accountApi;

  AccountRepositoryImpl({
    required this.accountApi,
  });

  @override
  FutureOr<ApiResponse<LoginResponseDto>> login({
    required LoginRequestDto requestData,
  }) async {
    return await accountApi.login(requestData: requestData);
  }
}
