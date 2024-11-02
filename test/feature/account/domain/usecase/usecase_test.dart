import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:flutter_test/flutter_test.dart';
import 'usecase_test.mocks.dart';

@GenerateMocks([AccountRepository])
void main() {
  late MockAccountRepository mockRepo;
  late AccountUseCase useCase;

  setUp(() {
    mockRepo = MockAccountRepository();
    useCase = AccountUseCaseImpl(accountRepo: mockRepo);
  });

  group('Account UseCase 테스트', () {
    test('로그인 성공', () async {
      // Given
      final successResponseDto = LoginResponseDtoMock.success();

      when(
        mockRepo.login(requestData: LoginRequestDtoMock.mock()),
      ).thenAnswer(
        (_) async => ApiResponse.success(successResponseDto),
      );

      // When
      final result = await useCase.login(
        entity: LoginRequestEntityMock.mock(),
      );

      // Then
      expect(result.isLoggedIn, true);
    });

    test('서버 에러로 인한 로그인 실패', () async {
      // Given
      when(
        mockRepo.login(requestData: LoginRequestDtoMock.mock()),
      ).thenAnswer(
        (_) async => ApiResponse.fail(FailResponse.error()),
      );

      // When
      final result = await useCase.login(
        entity: LoginRequestEntityMock.mock(),
      );

      // Then
      expect(result.isLoggedIn, false);
      expect(result.message, StringRes.serverError.tr);
    });
  });
}
