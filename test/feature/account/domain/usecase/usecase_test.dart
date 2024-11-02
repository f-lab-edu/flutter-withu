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

  test('로그인 성공 테스트', () async {
    final requestDto = LoginRequestDto(
      accountType: AccountType.company,
      loginType: LoginType.email,
      loginId: 'test@test.com',
      password: '123qwe!@',
    );

    final successResponseDto = LoginResponseDtoMock.success();

    // arrange
    when(
      mockRepo.login(requestData: requestDto),
    ).thenAnswer(
      (_) async => ApiResponse.success(successResponseDto),
    );

    // act
    final result = await useCase.login(
      accountType: requestDto.accountType,
      loginType: requestDto.loginType,
      loginId: requestDto.loginId,
      password: requestDto.password,
    );

    // assert
    expect(
      result,
      LoginResultEntity(
        isLoggedIn: true,
        message: successResponseDto.message,
      ),
    );
  });
}
