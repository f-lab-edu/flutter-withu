import 'dart:async';

import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/data/data_sources/dto/dto.dart';

abstract class AccountApi extends API {
  /// API 주소
  final path = "/api/account";

  /// 로그인 주소
  late final loginPath = '$path/login';

  /// 로그인 API
  FutureOr<ApiResponse<LoginResponseDto>> login({
    required LoginRequestDto requestData,
  });
}
