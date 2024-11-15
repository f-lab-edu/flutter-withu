import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/feature/account/domain/usecase/email_duplicate_check/email_duplicate_check_usecase.dart';

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
    test('중복 케이스', () async {
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

    test('비중복 케이스', () async {
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

    test('서버 에러 케이스', () async {
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
