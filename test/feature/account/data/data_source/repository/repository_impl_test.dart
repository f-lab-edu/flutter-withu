import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

import 'repository_impl_test.mocks.dart';

@GenerateMocks([AccountApiImpl, AccountStorageImpl])
void main() {
  late AccountApi api;
  late AccountRepository repo;
  final LoginRequestDto requestData = LoginRequestDtoMock.mock();

  setUp(() {
    api = MockAccountApiImpl();
    repo = AccountRepositoryImpl(
      accountApi: api,
      accountStorage: MockAccountStorageImpl(),
    );
  });

  group('AccountRepository 테스트', () {
    test('로그인 성공', () async {
      // Given
      when(
        api.login(requestData: requestData),
      ).thenAnswer(
        (_) async => ApiResponse<LoginResponseDto>.success(
          LoginResponseDtoMock.success(),
        ),
      );

      // When
      final result = await repo.login(requestData: requestData);

      // Then
      expect(result, ApiResponse.success(LoginResponseDtoMock.success()));
      expect(result.successData?.status, true);
      expect(result.successData?.loginId, 'test@test.com');
    });

    test('로그인 실패', () async {
      // Given
      when(
        api.login(requestData: requestData),
      ).thenAnswer(
        (_) async => ApiResponse<LoginResponseDto>.success(
          LoginResponseDtoMock.failure(),
        ),
      );

      // When
      final result = await repo.login(requestData: requestData);

      // Then
      expect(result.isSuccess, true);
      expect(result.successData?.status, false);
    });

    test('로그인 요청 API 500 에러', () async {
      // Given
      when(
        api.login(requestData: requestData),
      ).thenAnswer(
        (_) async => ApiResponse<LoginResponseDto>.fail(
          FailResponse.error(),
        ),
      );

      // When
      final result = await repo.login(requestData: requestData);

      // Then
      expect(result.isSuccess, false);
      expect(result.failData?.message, '서버 에러');
    });
  });
}
