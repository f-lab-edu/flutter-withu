import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

class MockAccountApi extends Mock implements AccountApi {}

class MockAccountRepository extends Mock implements AccountRepository {}

void main() {
  late MockAccountRepository mockRepo;
  late EmailDuplicateCheckUseCase useCase;

  setUpAll(() {});

  setUp(() {
    mockRepo = MockAccountRepository();
    useCase = EmailDuplicateCheckUseCaseImpl(accountRepo: mockRepo);
  });

  group('이메일 중복 검사 테스트', () {
    test('test@test.com으로 가입하려고 하면, 이미 가입되어 있으므로 가입이 실패해야 한다.', () async {
      /// Given
      const email = "test@test.com";
      final expectDto = BaseResponseDtoMock.mock(true);

      when(
        () => mockRepo.checkEmailDuplicate(email: email),
      ).thenAnswer(
        (_) async => ApiResponse.success(expectDto),
      );

      /// When
      final result = await useCase.exec(email: email);

      /// Then
      expect(result, StringRes.emailDuplicateError.tr);
      verify(() => mockRepo.checkEmailDuplicate(email: email)).called(1);
    });

    test('test@test.com으로 이메일 가입하려고 시도하면 중복되지 않으므로 가입이 진행되어야 한다', () async {
      /// Given
      const email = "test@test.co.kr";
      final expectDto = BaseResponseDtoMock.mock(false);

      when(
        () => mockRepo.checkEmailDuplicate(email: email),
      ).thenAnswer(
        (_) async => ApiResponse.success(expectDto),
      );

      /// When
      final result = await useCase.exec(email: email);

      /// Then
      expect(result, isEmpty);
      verify(() => mockRepo.checkEmailDuplicate(email: email)).called(1);
    });

    test('test@test.com으로 이메일 가입하려고 시도했을 때 서버 에러 응답 시 가입에 실패해야 한다', () async {
      /// Given
      const email = "test@test.co.kr";
      const expectDto = FailResponse(status: 400);

      when(
        () => mockRepo.checkEmailDuplicate(email: email),
      ).thenAnswer(
        (_) async => const ApiResponse.fail(expectDto),
      );

      /// When
      final result = await useCase.exec(email: email);

      /// Then
      expect(result, StringRes.serverError.tr);
      verify(() => mockRepo.checkEmailDuplicate(email: email)).called(1);
    });
  });
}
