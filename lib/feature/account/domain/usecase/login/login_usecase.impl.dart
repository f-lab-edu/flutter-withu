part of 'login_usecase.dart';

class LoginUseCaseImpl implements LoginUseCase {
  @override
  final AccountRepository accountRepo;

  LoginUseCaseImpl({required this.accountRepo});

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
}
