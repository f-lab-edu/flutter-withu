import 'dart:async';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'phone_auth_usecase.impl.dart';

abstract class PhoneAuthUseCase {
  final AccountRepository accountRepo;

  PhoneAuthUseCase({required this.accountRepo});

  /// 휴대폰 인증번호 발송 요청
  Future<SendAuthCodeResultEntity> sendAuthCode({
    required String phone,
  });

  /// 인증번호 검증
  Future<bool> authCodeVerification({
    required AuthCodeVerificationEntity entity,
  });
}
