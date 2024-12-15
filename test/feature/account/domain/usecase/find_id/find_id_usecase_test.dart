import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

class _MockRepository extends Mock implements AccountRepository {}

void main() {
  late _MockRepository mockRepo;
  late FindIdUseCase useCase;
  final requestEntity = FindIdRequestEntity(
    phone: '01012345678',
    authCode: '111111',
    accountType: AccountType.company,
  );

  setUpAll(() {
    registerFallbackValue(requestEntity.toDto());
  });

  setUp(() {
    mockRepo = _MockRepository();
    useCase = FindIdUseCaseImpl(accountRepo: mockRepo);
  });

  group('아이디 찾기 유즈케이스 테스트', () {
    test('계정 찾기 성공시 FindIdResultEntity를 반환해야 한다', () async {
      /// Given
      final responseDto = FindIdResponseDtoMock.success();
      final expectEntity = FindIdResultEntityParser.fromDto(responseDto);

      when(
        () => mockRepo.findId(dto: any(named: 'dto')),
      ).thenAnswer(
        (_) async => ApiResponse.success(responseDto),
      );

      /// When
      final result = await useCase.exec(entity: requestEntity);

      /// Then
      expect(result, isA<FindIdResultEntity>());
      expect(result, expectEntity);
    });

    test('계정 찾기 실패시 에러 상태의 FindIdResultEntity 를 반환해야 한다', () async {
      /// Given
      final responseDto = FindIdResponseDtoMock.failure();
      final expectEntity = FindIdResultEntityParser.fromDto(responseDto);

      when(
        () => mockRepo.findId(dto: any(named: 'dto')),
      ).thenAnswer(
        (_) async => ApiResponse.success(responseDto),
      );

      /// When
      final result = await useCase.exec(entity: requestEntity);

      /// Then
      expect(result, expectEntity);
    });

    test('입력된 Entity가 올바르게 DTO로 변환되어야 한다', () async {
      /// Given
      final responseDto = FindIdResponseDtoMock.success();

      when(
        () => mockRepo.findId(dto: any(named: 'dto')),
      ).thenAnswer(
        (_) async => ApiResponse.success(responseDto),
      );

      /// When
      await useCase.exec(entity: requestEntity);

      /// Then
      final expectedDto = requestEntity.toDto();
      verify(() => mockRepo.findId(dto: expectedDto)).called(1);
    });

    test('Repository 응답이 올바르게 Entity로 변환되어야 한다', () async {
      /// Given
      final responseDto = FindIdResponseDtoMock.success();

      when(
        () => mockRepo.findId(dto: any(named: 'dto')),
      ).thenAnswer(
        (_) async => ApiResponse.success(responseDto),
      );

      /// When
      final result = await useCase.exec(entity: requestEntity);

      /// Then
      expect(result, FindIdResultEntityParser.fromDto(responseDto));
    });

    test('Repository에서 예외 발생시 에러 상태의 Entity를 반환해야 한다', () async {
      /// Given
      final responseDto = FailResponseExt.fromException('');
      when(
        () => mockRepo.findId(dto: any(named: 'dto')),
      ).thenAnswer(
        (_) async => ApiResponse.fail(responseDto),
      );

      /// When
      final result = await useCase.exec(entity: requestEntity);

      /// Then
      expect(result, FindIdResultEntityMock.error());
    });
  });
}
