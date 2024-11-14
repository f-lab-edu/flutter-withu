import 'dart:async';

import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'usecase_impl.dart';

abstract class AccountUseCase {
  final AccountRepository accountRepo;

  AccountUseCase({required this.accountRepo});

  /// 로그인
  Future<LoginResultEntity> login({
    required LoginRequestEntity entity,
  });

  /// 로그인 여부
  Future<bool> checkLogin();

  /// 휴대폰 인증번호 발송 요청
  Future<SendAuthCodeResultEntity> sendAuthCode({
    required String phone,
  });

  /// 인증번호 검증
  Future<bool> authCodeVerification({
    required AuthCodeVerificationEntity entity,
  });
}
