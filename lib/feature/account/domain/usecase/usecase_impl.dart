part of 'usecase.dart';

class AccountUseCaseImpl implements AccountUseCase {
  @override
  final AccountRepository accountRepo;

  AccountUseCaseImpl({required this.accountRepo});

  /// 로그인
  @override
  Future<LoginResultEntity> login({
    required AccountType accountType,
    required LoginType loginType,
    required String loginId,
    required String password,
  }) async {
    final result = await accountRepo.login(
      requestData: LoginRequestDto(
        accountType: accountType,
        loginType: loginType,
        loginId: loginId,
        password: password,
      ),
    );

    _storeSessionId(id: result.successData?.sessionId ?? '');

    return LoginResultEntityParser.fromDto(result: result);
  }

  /// 세션 Id 저장
  void _storeSessionId({
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
