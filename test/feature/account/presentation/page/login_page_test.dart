import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/shared/shared.dart';

import 'login_page_test.mocks.dart';
import 'login_page_test_helper.dart';

@GenerateMocks([LoginBloc])
void main() {
  group('LoginPage Test', () {
    late MockLoginBloc loginBloc;
    late Widget testWidget;

    setUp(() {
      loginBloc = MockLoginBloc();

      final initialState = LoginState(
        status: BaseBlocStatus.initial(),
        selectedTab: AccountType.company,
      );

      when(loginBloc.state).thenReturn(initialState);
      when(loginBloc.stream).thenAnswer(
        (_) => Stream.fromIterable([
          initialState,
          initialState.copyWith(selectedTab: AccountType.user),
        ]),
      );

      testWidget = MaterialApp(
        home: BlocProvider<LoginBloc>.value(
          value: loginBloc,
          child: const LoginPageContent(), // 로그인 페이지 위젯
        ),
      );
    });

    testWidgets('화면 로딩 후 초기화 상태 검사', (WidgetTester tester) async {
      //Given
      await tester.pumpWidget(testWidget);
      final companyTab = LoginPageTestHelper.getCompanyTab(tester);
      final userTab = LoginPageTestHelper.getUserTab(tester);

      // When

      // Then
      expect(loginBloc.state.status.isInitial, true);
      expect(loginBloc.state.selectedTab, AccountType.company);
      expect(loginBloc.state.loginId, '');
      expect(loginBloc.state.password, '');
      expect(loginBloc.state.isValidId, true);
      expect(loginBloc.state.isValidPassword, true);
      expect(loginBloc.state.isEnabledLogin, false);

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
      await tester.pumpWidget(testWidget);
      final companyTab = LoginPageTestHelper.getCompanyTab(tester);
      final userTab = LoginPageTestHelper.getUserTab(tester);

      when(
        loginBloc.add(argThat(isA<LoginTabPressed>())),
      ).thenAnswer((_) {
        when(loginBloc.state).thenReturn(
          LoginState(
            status: BaseBlocStatus.initial(),
            selectedTab: AccountType.user,
          ),
        );
      });

      // 초기 상태 검증
      expect(companyTab.isSelected, true);
      expect(userTab.isSelected, false);

      // When
      await tester.tap(LoginPageTestHelper.userTabFinder());
      await tester.pumpAndSettle();

      // Then
      verify(loginBloc.add(argThat(isA<LoginTabPressed>()))).called(1);
      expect(loginBloc.state.selectedTab, equals(AccountType.user));

      final updatedCompanyTab = LoginPageTestHelper.getCompanyTab(tester);
      final updatedUserTab = LoginPageTestHelper.getUserTab(tester);
      expect(updatedCompanyTab.isSelected, false);
      expect(updatedUserTab.isSelected, true);
    });

    testWidgets('이메일 입력 테스트', (WidgetTester tester) async {
      //Given
      const loginId = 'test@test.com';
      when(
        loginBloc.add(argThat(isA<LoginIdInputted>())),
      ).thenAnswer((_) {
        when(loginBloc.state).thenReturn(
          loginBloc.state.copyWith(
            loginId: loginId,
            isValidId: true,
          ),
        );
      });

      await tester.pumpWidget(testWidget);

      // 초기 상태 검증
      expect(loginBloc.state.loginId, '');

      // When
      await tester.enterText(
        LoginPageTestHelper.idInputFinder(),
        loginId,
      );
      await tester.pumpAndSettle();

      // Then
      verify(loginBloc.add(argThat(isA<LoginIdInputted>()))).called(1);
      expect(find.text(loginId), findsOneWidget);
    });
  });
}
