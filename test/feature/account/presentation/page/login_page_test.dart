import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/shared/shared.dart';

import 'login_page_test_helper.dart';

class MockLoginBloc extends MockBloc<LoginEvent, LoginState>
    implements LoginBloc {}

void main() {
  group('LoginPage Test', () {
    late MockLoginBloc loginBloc;
    late Widget testWidget;
    late LoginState initialState;

    setUp(() {
      loginBloc = MockLoginBloc();

      initialState = LoginState(
        status: BaseBlocStatus.initial(),
      );

      testWidget = MaterialApp(
        home: BlocProvider<LoginBloc>(
          create: (context) => loginBloc,
          child: const LoginPageContent(), // 로그인 페이지 위젯
        ),
      );
    });

    testWidgets('화면 로딩 후 초기화 상태 검사', (WidgetTester tester) async {
      //Given
      whenListen(
        loginBloc,
        Stream.fromIterable([initialState]),
        initialState: initialState,
      );

      // When
      await tester.pumpWidget(testWidget);
      final companyTab = LoginPageTestHelper.getCompanyTab(tester);
      final userTab = LoginPageTestHelper.getUserTab(tester);

      // UI 요소 검증;
      expect(companyTab, isA<BaseTab>());
      expect(companyTab.isSelected, true);
      expect(userTab, isA<BaseTab>());
      expect(userTab.isSelected, false);
      expect(find.byType(BaseInput), findsNWidgets(2)); // ID, PW 입력 필드
      expect(find.byType(BaseButton), findsOneWidget); // 로그인 버튼
    });

    testWidgets('새로운 일 찾기 탭 클릭 테스트', (WidgetTester tester) async {
      //Given
      whenListen(
        loginBloc,
        Stream.fromIterable([
          initialState,
          initialState.copyWith(
            selectedTab: AccountType.user,
          )
        ]),
        initialState: initialState,
      );

      // When
      await tester.pumpWidget(testWidget);
      await tester.tap(LoginPageTestHelper.userTabFinder());
      await tester.pumpAndSettle();

      // Then
      expect(loginBloc.state.selectedTab, equals(AccountType.user));
      expect(LoginPageTestHelper.getCompanyTab(tester).isSelected, false);
      expect(LoginPageTestHelper.getUserTab(tester).isSelected, true);
    });

    testWidgets('이메일 입력 테스트', (WidgetTester tester) async {
      //Given
      whenListen(
        loginBloc,
        Stream.fromIterable([
          initialState,
          initialState.copyWith(
            selectedTab: AccountType.user,
          )
        ]),
        initialState: initialState,
      );

      // When
      await tester.pumpWidget(testWidget);
      await tester.tap(LoginPageTestHelper.userTabFinder());
      await tester.pumpAndSettle();

      // Then
      expect(loginBloc.state.selectedTab, equals(AccountType.user));
      expect(LoginPageTestHelper.getCompanyTab(tester).isSelected, false);
      expect(LoginPageTestHelper.getUserTab(tester).isSelected, true);
    });
  });
}
