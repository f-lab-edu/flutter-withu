import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:bloc_test/bloc_test.dart';

import 'bloc_test.mocks.dart';

@GenerateMocks([AccountUseCase])
void main() {
  group(LoginBloc, () {
    late MockAccountUseCase accountUseCase;
    late LoginBloc loginBloc;

    setUp(() {
      accountUseCase = MockAccountUseCase();
      loginBloc = LoginBloc(accountUseCase: accountUseCase);
    });

    test('Initial state', () {
      expect(loginBloc.state.status.isInitial, true);
      expect(loginBloc.state.selectedTab, AccountType.company);
      expect(loginBloc.state.loginId, '');
      expect(loginBloc.state.password, '');
      expect(loginBloc.state.isValidId, true);
      expect(loginBloc.state.isValidPassword, true);
      expect(loginBloc.state.isEnabledLogin, false);
    });

    blocTest(
      '새로운 일 찾기 탭 클릭 이벤트',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginTabPressed(type: AccountType.user)),
      expect: () => [
        isA<LoginState>().having(
          (state) => state.selectedTab,
          'selectedTab',
          AccountType.user,
        ),
      ],
    );

    blocTest(
      '이메일 입력 이벤트 검사',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginIdInputted(id: 'test@test.com')),
      expect: () => [
        isA<LoginState>()
            .having(
              (state) => state.loginId,
              'loginId',
              'test@test.com',
            )
            .having(
              (state) => state.isValidId,
              'isValidId',
              true,
            )
            .having(
              (state) => state.isEnabledLogin,
              'isEnabledLogin',
              false, // password가 아직 없으므로 false,
            ),
      ],
    );

    blocTest(
      '잘못된 이메일 입력 이벤트 검사',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginIdInputted(id: 'test')),
      expect: () => [
        isA<LoginState>()
            .having(
              (state) => state.loginId,
              'loginId',
              'test',
            )
            .having(
              (state) => state.isValidId,
              'isValidId',
              false,
            )
            .having(
              (state) => state.isEnabledLogin,
              'isEnabledLogin',
              false, // password가 아직 없으므로 false,
            ),
      ],
    );

    blocTest(
      '비밀번호 입력 이벤트 검사',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginPasswordInputted(password: '123qwe!@')),
      expect: () => [
        isA<LoginState>()
            .having((state) => state.password, 'password', '123qwe!@')
            .having((state) => state.isValidPassword, 'isValidPassword', true)
            .having((state) => state.isEnabledLogin, 'isEnabledLogin', false),
      ],
    );

    blocTest(
      '8자리 미만 비밀번호 입력 이벤트 검사',
      build: () => loginBloc,
      act: (bloc) => bloc.add(LoginPasswordInputted(password: '12qw!@')),
      expect: () => [
        isA<LoginState>()
            .having((state) => state.password, 'password', '12qw!@')
            .having((state) => state.isValidPassword, 'isValidPassword', false)
            .having((state) => state.isEnabledLogin, 'isEnabledLogin', false),
      ],
    );

    blocTest(
      '아이디, 비밀번호 입력 시 isEnabledLogin 검사',
      build: () => loginBloc,
      act: (bloc) => [
        bloc.add(LoginIdInputted(id: 'test@test.com')),
        bloc.add(LoginPasswordInputted(password: '123qwe!@')),
      ],
      expect: () => [
        /// 이메일 입력 후 상태
        isA<LoginState>()
            .having((state) => state.loginId, 'loginId', 'test@test.com')
            .having((state) => state.isValidId, 'isValidId', true)
            .having((state) => state.isEnabledLogin, 'isEnabledLogin', false),

        /// 비밀번호도 입력 후 상태
        isA<LoginState>()
            .having((state) => state.password, 'password', '123qwe!@')
            .having((state) => state.isValidPassword, 'isValidPassword', true)
            .having((state) => state.isEnabledLogin, 'isEnabledLogin', true),
      ],
    );

    blocTest(
      '로그인 버튼 클릭 시 성공 케이스',
      build: () => loginBloc,
      // Given
      setUp: () {
        when(
          accountUseCase.login(entity: anyNamed('entity')),
        ).thenAnswer(
          (_) async => LoginResultEntity(
            isLoggedIn: true,
            message: '로그인 성공',
          ),
        );
      },
      // When
      act: (bloc) => bloc.add(LoginBtnPressed()),
      //Then
      expect: () => [
        /// Loading 상태
        isA<LoginState>().having(
          (state) => state.status,
          'status',
          isA<BaseBlocStatusLoading>(),
        ),

        /// Success 상태
        isA<LoginState>()
            .having(
              (state) => state.status,
              'status',
              isA<BaseBlocStatusSuccess>(),
            )
            .having(
              (state) => state.message,
              'message',
              '로그인 성공',
            ),
      ],
      verify: (_) {
        verify(accountUseCase.login(entity: anyNamed('entity'))).called(1);
      },
    );

    blocTest(
      '로그인 버튼 클릭 시 실패 케이스',
      build: () => loginBloc,
      // Given
      setUp: () {
        when(
          accountUseCase.login(entity: anyNamed('entity')),
        ).thenAnswer(
          (_) async => LoginResultEntity(
            isLoggedIn: false,
            message: '중복된 아이디 입니다.',
          ),
        );
      },
      // When
      act: (bloc) => bloc.add(LoginBtnPressed()),
      //Then
      expect: () => [
        /// Loading 상태
        isA<LoginState>().having(
          (state) => state.status,
          'status',
          isA<BaseBlocStatusLoading>(),
        ),

        /// Failure 상태
        isA<LoginState>().having(
          (state) => state.status,
          'status',
          isA<BaseBlocStatusFailure>(),
        )
      ],
      verify: (_) {
        verify(accountUseCase.login(entity: anyNamed('entity'))).called(1);
      },
    );
  });
}
