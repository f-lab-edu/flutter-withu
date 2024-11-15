part of 'phone_auth_usecase.dart';

class PhoneAuthUseCaseImpl implements PhoneAuthUseCase {
  @override
  final AccountRepository accountRepo;

  PhoneAuthUseCaseImpl({required this.accountRepo});

  /// 휴대폰 인증번호 발송 요청
  @override
  Future<SendAuthCodeResultEntity> sendAuthCode({
    required String phone,
  }) async {
    final result = await accountRepo.sendAuthCode(phone: phone);

    return result.maybeWhen(
      success: (dto) => SendAuthCodeResultEntityParser.fromDto(dto),
      orElse: () => SendAuthCodeResultEntityMock.serverError(),
    );
  }

  /// 인증번호 검증
  @override
  Future<bool> authCodeVerification({
    required AuthCodeVerificationEntity entity,
  }) async {
    final result = await accountRepo.accountApi.verifyAuthCode(
      dto: entity.toDto(),
    );

    return result.successData?.info == true;
  }
}
