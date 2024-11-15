part of 'email_duplicate_check_usecase.dart';

class EmailDuplicateCheckUseCaseImpl implements EmailDuplicateCheckUseCase {
  @override
  final AccountRepository accountRepo;

  EmailDuplicateCheckUseCaseImpl({required this.accountRepo});

  @override
  Future<String> exec({
    required String email,
  }) async {
    final result = await accountRepo.checkEmailDuplicate(
      email: email,
    );

    return result.maybeWhen(
      success: (BaseResponseDto<bool> response) {
        return _getDuplicatedText(response.isTrue);
      },
      orElse: () => StringRes.serverError.tr,
    );
  }

  String _getDuplicatedText(bool isDuplicated) {
    return isDuplicated ? StringRes.emailDuplicateError.tr : '';
  }
}
