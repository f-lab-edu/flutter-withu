import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/core/router/router.gr.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/shared/shared.dart';

import 'login_page_test_helper.dart';

class MockLoginBloc extends MockBloc<LoginEvent, LoginState>
    implements LoginBloc {}

class MockRouter extends Mock implements AppRouter {}

class FakePageRouteInfo extends Mock implements PageRouteInfo {}

void main() {
  group('LoginPage Test', () {
    late Widget testWidget;
    late MockLoginBloc loginBloc;
    late LoginState initialState;
    late StreamController<LoginState> controller;
    late MockRouter mockRouter;

    /// 테스트 시작 전
    setUp(() {
      loginBloc = MockLoginBloc();
      initialState = LoginState(status: BaseBlocStatus.initial());
      controller = StreamController();
      mockRouter = MockRouter();

      if (!getIt.isRegistered<AppRouter>()) {
        getIt.registerSingleton<AppRouter>(mockRouter);
      }

      whenListen(
        loginBloc,
        controller.stream,
        initialState: initialState.copyWith(
          isVisiblePassword: true,
        ),
      );

      registerFallbackValue(FakePageRouteInfo());
      when(() => mockRouter.push(any())).thenAnswer((_) async => null);
      when(() => mockRouter.replaceAll(any())).thenAnswer((_) async {});

      testWidget = MaterialApp(
        home: BlocProvider<LoginBloc>(
          create: (context) => loginBloc,
          child: const LoginPageContent(), // 로그인 페이지 위젯
        ),
      );
    });

    /// 테스트 종료 후
    tearDown(() {
      controller.close();
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

    testWidgets('[새로운 일 찾기] 탭 클릭 테스트', (WidgetTester tester) async {
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

    testWidgets('이메일 유효성 검사 - 성공 케이스', (WidgetTester tester) async {
      //Given
      const email = 'test@test.com';
      whenListen(
        loginBloc,
        Stream.fromIterable([
          initialState,
          initialState.copyWith(
            loginId: const Email(value: email),
          ),
        ]),
        initialState: initialState,
      );

      // When
      await tester.pumpWidget(testWidget);
      await tester.enterText(LoginPageTestHelper.idInputFinder(), email);
      await tester.pumpAndSettle();

      // Then
      expect(loginBloc.state.loginId, equals(const Email(value:email)));
      expect(loginBloc.state.loginId.isValid, isTrue);
      expect(find.text(email), findsOneWidget);
      expect(LoginPageTestHelper.idErrorMessageFinder(), findsNothing);
    });

    testWidgets('이메일 유효성 검사 - 실패 케이스', (WidgetTester tester) async {
      //Given
      const email = 'test';
      whenListen(
        loginBloc,
        Stream.fromIterable([
          initialState,
          initialState.copyWith(
            loginId: const Email(value:email),
          ),
        ]),
        initialState: initialState,
      );

      // When
      await tester.pumpWidget(testWidget);
      await tester.enterText(LoginPageTestHelper.idInputFinder(), email);
      await tester.pumpAndSettle();

      // Then
      expect(loginBloc.state.loginId, equals(const Email(value:email)));
      expect(loginBloc.state.loginId.isValid, isFalse);
      expect(find.text(email), findsOneWidget);
      expect(LoginPageTestHelper.idErrorMessageFinder(), findsOneWidget);
      expect(find.text(StringRes.pleaseEnterValidEmail.tr), findsOneWidget);
    });

    testWidgets('비밀번호 유효성 검사 - 성공 케이스', (WidgetTester tester) async {
      //Given
      const password = '123qwe!@';
      whenListen(
        loginBloc,
        Stream.fromIterable([
          initialState,
          initialState.copyWith(
            password: const Password(password),
          ),
        ]),
        initialState: initialState,
      );

      // When
      await tester.pumpWidget(testWidget);
      await tester.enterText(
          LoginPageTestHelper.passwordInputFinder(), password);
      await tester.pumpAndSettle();

      // Then
      expect(loginBloc.state.password, equals(const Password(password),));
      expect(loginBloc.state.password.isValid, isTrue);
      expect(find.text(password), findsOneWidget);
      expect(LoginPageTestHelper.passwordErrorMessageFinder(), findsNothing);
    });

    testWidgets('비밀번호 유효성 검사 - 실패 케이스', (WidgetTester tester) async {
      //Given
      const password = '123qwe';
      whenListen(
        loginBloc,
        Stream.fromIterable([
          initialState,
          initialState.copyWith(
            password: const Password(password),
          ),
        ]),
        initialState: initialState,
      );

      // When
      await tester.pumpWidget(testWidget);
      await tester.enterText(
        LoginPageTestHelper.passwordInputFinder(),
        password,
      );
      await tester.pumpAndSettle();

      // Then
      expect(loginBloc.state.password, equals(const Password(password)));
      expect(loginBloc.state.password.isValid, isFalse);
      expect(find.text(password), findsOneWidget);
      expect(LoginPageTestHelper.passwordErrorMessageFinder(), findsOneWidget);
      expect(find.text(StringRes.pleaseEnterValidPassword.tr), findsOneWidget);
    });

    testWidgets('비밀번호 텍스트 표시 테스트', (WidgetTester tester) async {
      /// Given
      controller.add(initialState.copyWith(isVisiblePassword: false));

      /// When
      await tester.pumpWidget(testWidget);
      await tester.pumpAndSettle();

      /// 사전 검증 - 암호화 상태 확인
      expect(loginBloc.state.isVisiblePassword, isFalse);
      expect(LoginPageTestHelper.getPasswordInput(tester).obscureText, true);

      controller.add(initialState.copyWith(isVisiblePassword: true));
      await tester.press(LoginPageTestHelper.passwordVisibleButton());
      await tester.pumpAndSettle();

      /// Then
      expect(loginBloc.state.isVisiblePassword, isTrue);
      expect(LoginPageTestHelper.getPasswordInput(tester).obscureText, isFalse);
    });

    testWidgets('비밀번호 텍스트 숨김 테스트', (WidgetTester tester) async {
      /// Given

      /// When
      await tester.pumpWidget(testWidget);
      await tester.pumpAndSettle();

      /// 사전 검증 - 암호화 상태 확인
      expect(loginBloc.state.isVisiblePassword, isTrue);
      expect(LoginPageTestHelper.getPasswordInput(tester).obscureText, isFalse);

      /// 클릭 이벤트 방출
      controller.add(initialState.copyWith(isVisiblePassword: false));
      await tester.press(LoginPageTestHelper.passwordVisibleButton());
      await tester.pumpAndSettle();

      /// Then
      expect(loginBloc.state.isVisiblePassword, isFalse);
      expect(LoginPageTestHelper.getPasswordInput(tester).obscureText, isTrue);
    });

    testWidgets('로그인 요청 - 성공 케이스 테스트', (WidgetTester tester) async {
      /// Given
      const loginId = 'test@test.com';
      const password = '123qwe!@';
      final state = initialState.copyWith(
        loginId: const Email(value:loginId),
        password: const Password(password),
        isEnabledLogin: true,
      );
      controller.add(state);

      /// When
      await tester.pumpWidget(testWidget);
      await tester.pumpAndSettle();

      /// 사전 검증 - 암호화 상태 확인
      expect(loginBloc.state.isEnabledLogin, isTrue);

      /// 클릭 이벤트 방출
      controller.add(state.copyWith(status: BaseBlocStatus.success()));
      await tester.press(LoginPageTestHelper.loginButtonFinder());
      await tester.pumpAndSettle();

      /// Then
      expect(loginBloc.state.status, isA<BaseBlocStatusSuccess>());
      verify(() => getItAppRouter.replaceAll([const JobPostingsRoute()]))
          .called(1);
    });

    testWidgets('로그인 요청 - 실패 케이스 테스트', (WidgetTester tester) async {
      /// Given
      const loginId = 'test@test.com';
      const password = '123qwe!@';
      const failMessage = '존재하지 않는 계정입니다.';
      final state = initialState.copyWith(
        loginId: const Email(value:loginId),
        password: const Password(password),
        isEnabledLogin: true,
      );
      controller.add(state);

      /// When
      await tester.pumpWidget(testWidget);
      await tester.pumpAndSettle();

      /// 클릭 이벤트 방출
      controller.add(state.copyWith(
        status: BaseBlocStatus.failure(),
        message: failMessage,
      ));
      await tester.press(LoginPageTestHelper.loginButtonFinder());
      await tester.pumpAndSettle();

      /// Then
      expect(loginBloc.state.status, isA<BaseBlocStatusFailure>());
      expect(loginBloc.state.message, failMessage);
    });
  });
}
