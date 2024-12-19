import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

class MockFindIdUseCase extends Mock implements FindIdUseCase {}

void main() {
  late FindIdUseCase findIdUseCase;
  late FindIdBloc findIdBloc;
  late FindIdState findIdState;

  setUpAll(() {
    registerFallbackValue(
      FindIdRequestEntity(
        phone: '01012345678',
        authCode: '111111',
        accountType: AccountType.company,
      ),
    );
  });

  setUp(() {
    findIdUseCase = MockFindIdUseCase();
    findIdBloc = FindIdBloc(findIdUseCase: findIdUseCase);
    findIdState = FindIdState(status: BaseBlocStatus.initial());
  });

  group('아이디 찾기 Bloc 테스트', () {
    test('초기 상태 테스트', () {
      expect(findIdBloc.state.status, isA<BaseBlocStatusInitial>());
      expect(findIdBloc.state.message, isEmpty);
      expect(findIdBloc.state.accountType, AccountType.none);
      expect(findIdBloc.state.isAuth, isFalse);
    });

    blocTest(
      '계정 타입이 회사 타입으로 저장된다.',
      build: () => findIdBloc,
      act: (bloc) => bloc.add(
        FindIdAccountTypeStored(accountType: AccountType.company),
      ),
      expect: () => [
        isA<FindIdState>().having(
          (state) => state.accountType,
          '회사 타입인지 검사',
          equals(AccountType.company),
        )
      ],
    );

    blocTest(
      '회사타입에서 계정 타입이 유저 타입으로 변경된다.',
      build: () => findIdBloc,
      seed: () => findIdState.copyWith(
        accountType: AccountType.company,
      ),
      act: (bloc) => bloc.add(
        FindIdAccountTypeStored(accountType: AccountType.user),
      ),
      expect: () => [
        isA<FindIdState>().having(
          (state) => state.accountType,
          '유저 타입인지 검사',
          equals(AccountType.user),
        )
      ],
    );

    blocTest(
      '인증 여부가 true 로 변경된다.',
      build: () => findIdBloc,
      act: (bloc) => bloc.add(
        FindIdIsAuthChanged(value: true),
      ),
      expect: () => [
        isA<FindIdState>().having(
          (state) => state.isAuth,
          'isAuth 검사',
          isTrue,
        )
      ],
    );

    blocTest(
      '아이디 찾기 인증 요청 성공 테스트',
      build: () => findIdBloc,
      setUp: () {
        when(
          () => findIdUseCase.exec(entity: any(named: 'entity')),
        ).thenAnswer(
          (_) async => FindIdResultEntityMock.success(),
        );
      },
      act: (bloc) => bloc.add(
        FindIdPressed(
          phone: const Phone('01049212480'),
          authCode: const AuthCode('111111'),
        ),
      ),
      expect: () => [
        isA<FindIdState>().having(
          (state) => state.status,
          '로딩 상태로 바뀐다.',
          isA<BaseBlocStatusLoading>(),
        ),
        isA<FindIdState>().having(
          (state) => state.status,
          '성공 상태로 바뀐다.',
          isA<BaseBlocStatusSuccess>(),
        ),
      ],
      verify: (_) {
        verify(
          () => findIdUseCase.exec(entity: any(named: 'entity')),
        ).called(1);
      },
    );

    blocTest(
      '아이디 찾기 인증 요청 실패 테스트',
      build: () => findIdBloc,
      setUp: () {
        when(
          () => findIdUseCase.exec(entity: any(named: 'entity')),
        ).thenAnswer(
          (_) async => FindIdResultEntityMock.error(),
        );
      },
      act: (bloc) => bloc.add(
        FindIdPressed(
          phone: const Phone('01049212480'),
          authCode: const AuthCode('111111'),
        ),
      ),
      expect: () => [
        isA<FindIdState>().having(
          (state) => state.status,
          '로딩 상태로 바뀐다.',
          isA<BaseBlocStatusLoading>(),
        ),
        isA<FindIdState>().having(
          (state) => state.status,
          '실패 상태로 바뀐다.',
          isA<BaseBlocStatusFailure>(),
        ),
      ],
      verify: (_) {
        verify(
          () => findIdUseCase.exec(entity: any(named: 'entity')),
        ).called(1);
      },
    );
  });
}
