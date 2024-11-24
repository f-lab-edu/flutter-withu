import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:flutter_test/flutter_test.dart';

class MockAccountApi extends Mock implements AccountApi {}

class MockAccountRepository extends Mock implements AccountRepository {}

void main() {
  late MockAccountRepository mockRepo;
  late LoginUseCase useCase;

  setUpAll(() {
    registerFallbackValue(LoginRequestDtoMock.mock());
  });

  setUp(() {
    mockRepo = MockAccountRepository();
    useCase = LoginUseCaseImpl(accountRepo: mockRepo);
  });

  group('로그인 요청 테스트', () {
    test('로그인 요청 - 성공 케이스 테스트', () async {
      // Given
      final successResponseDto = LoginResponseDtoMock.success();

      when(
            () => mockRepo.login(requestData: LoginRequestDtoMock.mock()),
      ).thenAnswer(
            (_) async => ApiResponse.success(successResponseDto),
      );
      when(
            () => mockRepo.storeSessionId(id: any(named: 'id')),
      ).thenAnswer(
            (_) async => {},
      );

      // When
      final result = await useCase.login(
        entity: LoginRequestEntityMock.mock(),
      );

      // Then
      expect(result.isLoggedIn, isTrue);
      expect(result.isLoggedIn, isTrue);
      verify(() => mockRepo.storeSessionId(id: any(named: 'id'))).called(1);
    });

    test('서버 에러로 인한 로그인 실패', () async {
      // Given
      when(
            () => mockRepo.login(requestData: any(named: 'requestData')),
      ).thenAnswer(
            (_) async => ApiResponse.fail(FailResponse.error()),
      );

      // When
      final result = await useCase.login(
        entity: LoginRequestEntityMock.mock(),
      );

      // Then
      verify(() => mockRepo.login(requestData: any(named: 'requestData')))
          .called(1);
      expect(result.isLoggedIn, isFalse);
      expect(result.message, StringRes.serverError.tr);
    });
  });
}
