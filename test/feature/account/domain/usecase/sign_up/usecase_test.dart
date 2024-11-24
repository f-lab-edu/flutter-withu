import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

class MockAccountRepository extends Mock implements AccountRepository {}

void main() {
  late MockAccountRepository mockRepo;
  late SignUpUseCase useCase;

  setUpAll(() {
    registerFallbackValue(SignUpRequestDtoMock.mock());
  });

  setUp(() {
    mockRepo = MockAccountRepository();
    useCase = SignUpUseCaseImpl(accountRepo: mockRepo);
  });

  group('회워 가입 UseCase 테스트', () {
    test('회원가입 성공', () async {
      /// Given
      final requestEntity = SignUpRequestEntityMock.mock();
      final expectDto = SignUpResponseDtoMock.success();

      when(
        () => mockRepo.signUp(dto: any(named: 'dto')),
      ).thenAnswer(
        (_) async => ApiResponse.success(expectDto),
      );

      /// When
      final result = await useCase.exec(entity: requestEntity);

      /// Then
      expect(result, isA<SignUpResultEntity>());
      expect(result.status, isTrue);
      verify(() => mockRepo.signUp(dto: any(named: 'dto'))).called(1);
    });

    test('회원가입 실패', () async {
      /// Given
      final requestEntity = SignUpRequestEntityMock.mock();
      final expectDto = SignUpResponseDtoMock.failure();

      when(
        () => mockRepo.signUp(dto: any(named: 'dto')),
      ).thenAnswer(
        (_) async => ApiResponse.success(expectDto),
      );

      /// When
      final result = await useCase.exec(entity: requestEntity);

      /// Then
      expect(result, isA<SignUpResultEntity>());
      expect(result.status, isFalse);
      verify(() => mockRepo.signUp(dto: any(named: 'dto'))).called(1);
    });

    test('서버에러', () async {
      /// Given
      final requestEntity = SignUpRequestEntityMock.mock();
      final expectDto = FailResponse.error();

      when(
        () => mockRepo.signUp(dto: any(named: 'dto')),
      ).thenAnswer(
        (_) async => ApiResponse.fail(expectDto),
      );

      /// When
      final result = await useCase.exec(entity: requestEntity);

      /// Then
      expect(result, isA<SignUpResultEntity>());
      expect(result.status, isFalse);
      expect(result.message, StringRes.serverError.tr);
      verify(() => mockRepo.signUp(dto: any(named: 'dto'))).called(1);
    });
  });
}
