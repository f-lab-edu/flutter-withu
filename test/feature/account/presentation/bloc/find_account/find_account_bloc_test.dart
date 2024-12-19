import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

void main() {
  late FindAccountBloc findAccountBloc;

  setUp(() {
    findAccountBloc = FindAccountBloc();
  });

  group('계정 찾기 Bloc 테스트', () {
    test('초기화 상태 검사', () {
      expect(findAccountBloc.state.status, isA<BaseBlocStatusInitial>());
      expect(findAccountBloc.state.message, isEmpty);
      expect(findAccountBloc.state.currentTab, FindAccountTabType.id);
    });

    blocTest(
      'FindAccountLoadingSet 이벤트가 호출되면 로딩상태가 된다.',
      build: () => findAccountBloc,
      act: (bloc) => bloc.add(FindAccountLoadingSet()),
      expect: () => [
        isA<FindAccountState>().having(
          (state) => state.status,
          '로딩 상태인지 검사',
          isA<BaseBlocStatusLoading>(),
        ),
      ],
    );

    blocTest(
      'FindAccountLoadingUnSet 이벤트가 호출되면 로딩 상태에서 초기화 상태가 된다.',
      build: () => findAccountBloc,
      seed: () => findAccountBloc.state.copyWith(
        status: BaseBlocStatus.loading(),
      ),
      act: (bloc) => bloc.add(FindAccountLoadingUnSet()),
      expect: () => [
        isA<FindAccountState>().having(
          (state) => state.status,
          '초기화 상태인지 검사',
          isA<BaseBlocStatusInitial>(),
        ),
      ],
    );

    blocTest(
      '아이디 탭에서 비밀번호 탭으로 변경된다.',
      build: () => findAccountBloc,
      act: (bloc) => bloc.add(
        FindAccountTabPressed(tab: FindAccountTabType.password),
      ),
      expect: () => [
        isA<FindAccountState>().having(
          (state) => state.currentTab,
          '비밀번호 탭인지 검사',
          equals(FindAccountTabType.password),
        ),
      ],
    );

    blocTest(
      '비밀번호 탭에서 아이디 탭으로 변경된다.',
      build: () => findAccountBloc,
      seed: () => findAccountBloc.state.copyWith(
        currentTab: FindAccountTabType.password,
      ),
      act: (bloc) => bloc.add(
        FindAccountTabPressed(tab: FindAccountTabType.id),
      ),
      expect: () => [
        isA<FindAccountState>().having(
          (state) => state.currentTab,
          '아이디 탭인지 검사',
          equals(FindAccountTabType.id),
        ),
      ],
    );
  });
}
