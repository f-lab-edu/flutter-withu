part of 'email_duplicate_check_use_case.dart';

class EmailDuplicateCheckUseCaseImpl implements EmailDuplicateCheckUseCase {
  @override
  final AccountRepository accountRepo;

  EmailDuplicateCheckUseCaseImpl({required this.accountRepo});

  @override
  Future<bool> exec({
    required String email,
  }) async {
    final result = await accountRepo.accountApi.checkEmailDuplicate(
      email: email,
    );

    return result.successData?.info == true;
  }
}
