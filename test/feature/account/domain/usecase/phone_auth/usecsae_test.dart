import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:flutter_test/flutter_test.dart';

class MockAccountApi extends Mock implements AccountApi {}

class MockAccountRepository extends Mock implements AccountRepository {}

void main() {
  late MockAccountRepository mockRepo;
  late PhoneAuthUseCase useCase;

  setUpAll(() {});

  setUp(() {
    mockRepo = MockAccountRepository();
    useCase = PhoneAuthUseCaseImpl(accountRepo: mockRepo);
  });

  group('휴대폰 번호 인증 테스트', () {
    test('휴대폰 번호 인증번호 전송 - 성공 케이스', () async {
      // Given
      const phone = "01012345678";
      final expectDto = SendAuthCodeResponseDtoMock.success();

      when(
        () => mockRepo.sendAuthCode(phone: phone),
      ).thenAnswer(
        (_) async => ApiResponse.success(expectDto),
      );

      // When
      final result = await useCase.sendAuthCode(
        phone: phone,
      );

      // Then
      expect(
        result,
        equals(SendAuthCodeResultEntityParser.fromDto(expectDto)),
      );
      verify(
        () => mockRepo.sendAuthCode(phone: phone),
      ).called(1);
    });

    test('휴대폰 번호 인증번호 전송 - 실패 케이스', () async {
      // Given
      final expectDto = FailResponse.error();

      when(
        () => mockRepo.sendAuthCode(phone: any(named: 'phone')),
      ).thenAnswer(
        (_) async => ApiResponse.fail(expectDto),
      );

      // When
      final result = await useCase.sendAuthCode(
        phone: '01012345678',
      );

      // Then
      expect(result.status, isFalse);
      expect(result.message, StringRes.serverError.tr);
      verify(
        () => mockRepo.sendAuthCode(phone: any(named: 'phone')),
      ).called(1);
    });
  });
}
