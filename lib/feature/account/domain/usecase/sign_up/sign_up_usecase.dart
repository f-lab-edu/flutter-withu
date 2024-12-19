import 'package:withu_app/feature/account/account.dart';

part 'sign_up_usecase_impl.dart';

abstract class SignUpUseCase {
  final AccountRepository accountRepo;

  SignUpUseCase({required this.accountRepo});

  Future<SignUpResultEntity> exec({
    required SignUpRequestEntity entity,
  });
}
