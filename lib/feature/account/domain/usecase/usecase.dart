import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'usecase_impl.dart';

abstract class AccountUseCase {
  final AccountRepository accountRepo;

  AccountUseCase({required this.accountRepo});

  /// 로그인
  Future<LoginResultEntity> login({
    required LoginType loginType,
    required String loginId,
    required String password,
  });

  /// 로그인 여부
  Future<bool> checkLogin();
}
