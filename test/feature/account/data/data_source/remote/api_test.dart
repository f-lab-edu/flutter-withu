import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

import 'api_test.mocks.dart';

@GenerateMocks([DioNetwork, Dio])
void main() {
  late MockDio mockDio;
  late MockDioNetwork mockDioNetwork;
  late AccountApi api;
  final LoginRequestDto requestData = LoginRequestDtoMock.mock();

  setUp(() {
    mockDio = MockDio();
    mockDioNetwork = MockDioNetwork();

    // mockDioNetwork.dio가 호출될 때 mockDio를 반환하도록 설정
    when(mockDioNetwork.dio).thenReturn(mockDio);

    api = AccountApiImpl(network: mockDioNetwork);
  });

  group('AccountAPI 테스트', () {
    test('로그인 요청 성공', () async {
      // Given
      when(
        mockDio.post(
          api.loginPath,
          data: requestData.toJson(),
        ),
      ).thenAnswer((_) async {
        return Response(
          data: LoginResponseDtoMock.success().toJson(),
          statusCode: 200,
          requestOptions: RequestOptions(),
        );
      });

      // When
      final result = await api.login(requestData: requestData);

      // Then
      expect(result, ApiResponse.success(LoginResponseDtoMock.success()));
      expect(result.successData?.status, true);
      expect(result.successData?.loginId, 'test@test.com');
    });

    test('로그인 실패', () async {
      // Given
      when(
        mockDio.post(
          api.loginPath,
          data: requestData.toJson(),
        ),
      ).thenAnswer((_) async {
        return Response(
          data: LoginResponseDtoMock.failure().toJson(),
          statusCode: 200,
          requestOptions: RequestOptions(),
        );
      });

      // When
      final result = await api.login(requestData: requestData);

      // Then
      expect(result, ApiResponse.success(LoginResponseDtoMock.failure()));
      expect(result.successData?.status, false);
    });

    test('API 500 에러', () async {
      // Given
      when(
        mockDio.post(
          api.loginPath,
          data: requestData.toJson(),
        ),
      ).thenAnswer((_) async {
        return Response(
          data: {},
          statusCode: 500,
          requestOptions: RequestOptions(),
        );
      });

      // When
      final result = await api.login(requestData: requestData);

      // Then
      expect(result, ApiResponse<LoginResponseDto>.fail(FailResponse.error()));
    });
  });
}
