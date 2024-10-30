import 'dart:async';

import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/data/data.dart';

abstract class AccountRepository {
  final AccountApi accountApi;

  AccountRepository({required this.accountApi});

  FutureOr<ApiResponse<LoginResponseDto>> login({
    required LoginRequestDto requestData,
  });
}
