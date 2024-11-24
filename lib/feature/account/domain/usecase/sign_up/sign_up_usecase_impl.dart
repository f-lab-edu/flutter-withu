part of 'sign_up_usecase.dart';

class SignUpUseCaseImpl implements SignUpUseCase {
  @override
  final AccountRepository accountRepo;

  SignUpUseCaseImpl({required this.accountRepo});

  @override
  Future<SignUpResultEntity> exec({required SignUpRequestEntity entity}) async {
    final result = await accountRepo.signUp(dto: entity.toDto());

    return result.maybeWhen(
      success: (dto) => SignUpResultEntityParser.fromDto(dto),
      orElse: () => SignUpResultEntityMock.serverError(),
    );
  }
}
