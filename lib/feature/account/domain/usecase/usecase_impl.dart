part of 'usecase.dart';

class AccountUseCaseImpl implements AccountUseCase {
  @override
  final AccountRepository accountRepo;

  AccountUseCaseImpl({required this.accountRepo});

  /// 로그인
  @override
  Future<LoginResultEntity> login({
    required LoginRequestEntity entity,
  }) async {
    final result = await accountRepo.login(
      requestData: entity.toDto(),
    );

    storeSessionId(id: result.successData?.sessionId ?? '');

    return LoginResultEntityConverter.fromDto(result: result);
  }

  /// 세션 Id 저장
  void storeSessionId({
    required String id,
  }) {
    if (id.isNotEmpty) {
      accountRepo.storeSessionId(id: id);
    }
  }

  /// 로그인 여부
  @override
  Future<bool> checkLogin() async {
    final sessionId = await accountRepo.getSessionId();
    return sessionId.isNotEmpty;
  }

  /// 휴대폰 인증번호 발송 요청
  @override
  Future<PhoneVerificationEntity> requestPhoneVerification({
    required String phone,
  }) async {
    final result = await accountRepo.accountApi.verifyPhone(
      phone: phone,
    );

    return result.maybeWhen(
      success: (dto) => PhoneVerificationEntityParser.fromDto(dto),
      orElse: () => PhoneVerificationEntityMock.serverError(),
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
