import 'package:withu_app/feature/account/account.dart';

abstract class FindIdUseCase {
  final AccountRepository accountRepo;

  FindIdUseCase({required this.accountRepo});

  Future<FindIdResultEntity> exec({
    required FindIdRequestEntity entity,
  });
}

class FindIdUseCaseImpl implements FindIdUseCase {
  @override
  final AccountRepository accountRepo;

  FindIdUseCaseImpl({required this.accountRepo});

  @override
  Future<FindIdResultEntity> exec({
    required FindIdRequestEntity entity,
  }) async {
    return await accountRepo
        .findId(
          dto: entity.toDto(),
        )
        .then(
          (response) => response.maybeWhen(
            success: (dto) => FindIdResultEntityParser.fromDto(dto),
            orElse: () => FindIdResultEntityMock.error(),
          ),
        )
        .catchError(
          (e) => FindIdResultEntityMock.error(),
        );
  }
}
