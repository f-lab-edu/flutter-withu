part of 'usecase.dart';

class AccountUseCaseImpl extends AccountUseCase {
  final AccountRepository accountRepo;

  AccountUseCaseImpl({required this.accountRepo});
}
