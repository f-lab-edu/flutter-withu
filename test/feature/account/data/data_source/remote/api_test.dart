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

  group('이메일 중복 검사 API 테스트', () {
    test('이메일 중복 검사 - 중복 아닌 경우', () async {
      // Given
      const email = "test@test.co.kr";
      when(
        mockDio.post(
          api.checkEmailDuplicatePath,
          data: {"loginId": email},
        ),
      ).thenAnswer((_) async {
        return Response(
          data: BaseResponseDtoMock.mock(true).toJson((value) => value),
          statusCode: 200,
          requestOptions: RequestOptions(),
        );
      });

      /// When
      final result = await api.checkEmailDuplicate(email: email);

      /// Then
      expect(result, isA<ApiResponse<BaseResponseDto<bool>>>());
      expect(result.successData?.info, isTrue);
    });

    test('이메일 중복 검사 - 중복인 경우', () async {
      // Given
      const email = "test@test.com";
      when(
        mockDio.post(
          api.checkEmailDuplicatePath,
          data: {"loginId": email},
        ),
      ).thenAnswer((_) async {
        return Response(
          data: BaseResponseDtoMock.mock(false).toJson((value) => value),
          statusCode: 200,
          requestOptions: RequestOptions(),
        );
      });

      /// When
      final result = await api.checkEmailDuplicate(email: email);

      /// Then
      expect(result, isA<ApiResponse<BaseResponseDto<bool>>>());
      expect(result.successData?.info, isFalse);
    });

    test('중복 검사 서버 에러 테스트', () async {
      // Given
      const email = "test@test.com";
      when(
        mockDio.post(
          api.checkEmailDuplicatePath,
          data: {"loginId": email},
        ),
      ).thenAnswer((_) async {
        return Response(
          data: FailResponse.error(),
          statusCode: 400,
          requestOptions: RequestOptions(),
        );
      });

      /// When
      final result = await api.checkEmailDuplicate(email: email);

      /// Then
      expect(result, isA<ApiResponse<BaseResponseDto<bool>>>());
    });
  });

  group('회원가입 API 테스트', () {
    final requestDto = SignUpRequestDtoMock.mock();

    test('회원가입 성공', () async {
      /// Given
      final responseDto = SignUpResponseDtoMock.success();
      when(
        mockDio.post(
          api.signUpPath,
          data: requestDto.toJson(),
        ),
      ).thenAnswer((_) async {
        return Response(
          data: responseDto.toJson(
            (data) => data.toJson(),
          ),
          statusCode: 200,
          requestOptions: RequestOptions(),
        );
      });

      /// When
      final result = await api.signUp(dto: requestDto);

      /// Then
      expect(result, isA<ApiResponse<SignUpResponseDto>>());
      expect(result.successData, isA<SignUpResponseDto>());
      expect(result.successData, responseDto);
    });

    test('회원가입 성공', () async {
      /// Given
      final responseDto = SignUpResponseDtoMock.failure();

      when(
        mockDio.post(
          api.signUpPath,
          data: requestDto.toJson(),
        ),
      ).thenAnswer((_) async {
        return Response(
          data: responseDto.toJson(
            (data) => data.toJson(),
          ),
          statusCode: 200,
          requestOptions: RequestOptions(),
        );
      });

      /// When
      final result = await api.signUp(dto: requestDto);

      /// Then
      expect(result, isA<ApiResponse<SignUpResponseDto>>());
      expect(result.successData, isA<SignUpResponseDto>());
      expect(result.successData, responseDto);
      expect(result.successData?.info.status, isFalse);
    });

    test('서버 에러 테스트', () async {
      /// Given
      when(
        mockDio.post(
          api.signUpPath,
          data: requestDto.toJson(),
        ),
      ).thenAnswer((_) async {
        return Response(
          data: FailResponse.error(),
          statusCode: 500,
          requestOptions: RequestOptions(),
        );
      });

      /// When
      final result = await api.signUp(dto: requestDto);

      /// Then
      expect(result, isA<ApiResponse<SignUpResponseDto>>());
      expect(result.failData?.status, equals(500));
    });
  });
}
