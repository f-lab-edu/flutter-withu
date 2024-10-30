part of 'usecase.dart';

class AccountUseCaseImpl implements AccountUseCase {
  @override
  final AccountRepository accountRepo;

  AccountUseCaseImpl({required this.accountRepo});

  /// 로그인
  @override
  Future<LoginResultEntity> login({
    required LoginType loginType,
    required String loginId,
    required String password,
  }) async {
    final result = await accountRepo.login(
        requestData: LoginRequestDto(
      loginType: loginType,
      loginId: loginId,
      password: password,
    ));

    // TODO: 로그인 결과를 로컬디비에 저장하기.

    return LoginResultEntityParser.fromDto(result: result);
  }
}
