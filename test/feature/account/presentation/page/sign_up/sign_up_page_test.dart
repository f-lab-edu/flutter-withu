import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

import '../../../../../core/utils/mixin/widget_key_utils.dart';
import '../email_duplicate_check/email_duplicate_check_widget_test.dart';
import '../phone_auth/phone_auth_widget_test.dart';

class MockSignUpBloc extends MockBloc<SignUpEvent, SignUpState>
    implements SignUpBloc {}

class FakeSignUpEvent extends Fake implements SignUpEvent {}

class FakeSignUpState extends Fake implements SignUpState {}

class FakePageRouteInfo extends Mock implements PageRouteInfo {}

class MockRouter extends Mock implements AppRouter {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockPhoneAuthBloc phoneAuthBloc;
  late PhoneAuthState initPhoneBlocState;

  late MockEmailDuplicateCheckBloc emailCheckBloc;
  late EmailDuplicateCheckState initEmailBlocState;

  late MockSignUpBloc signUpBloc;
  late SignUpState initSignUpBlocState;

  late MockRouter mockRouter;

  late Widget testWidget;

  setUpAll(() {
    registerFallbackValue(FakePageRouteInfo());
    registerFallbackValue(FakeSignUpEvent());
    registerFallbackValue(FakeSignUpState());
  });

  setUp(() {
    phoneAuthBloc = MockPhoneAuthBloc();
    emailCheckBloc = MockEmailDuplicateCheckBloc();
    signUpBloc = MockSignUpBloc();
    mockRouter = MockRouter();

    initPhoneBlocState = PhoneAuthState(
      status: BaseBlocStatus.initial(),
    );

    initEmailBlocState = EmailDuplicateCheckState(
      status: BaseBlocStatus.initial(),
    );

    initSignUpBlocState = SignUpState(
      status: BaseBlocStatus.initial(),
    );

    when(() => phoneAuthBloc.state).thenReturn(initPhoneBlocState);
    when(() => emailCheckBloc.state).thenReturn(initEmailBlocState);
    when(() => signUpBloc.state).thenReturn(initSignUpBlocState);

    getIt.registerSingleton<AppRouter>(
      mockRouter,
    );
    getIt.registerLazySingleton<PhoneAuthBloc>(
      () => phoneAuthBloc,
    );
    getIt.registerLazySingleton<EmailDuplicateCheckBloc>(
      () => emailCheckBloc,
    );
    getIt.registerFactory<SignUpBloc>(
      () => signUpBloc,
    );

    testWidget = const MaterialApp(
      home: SignUpPage(),
    );
  });

  tearDown(() {
    phoneAuthBloc.close();
    emailCheckBloc.close();
    signUpBloc.close();
    getItAppRouter.dispose();
    getIt.reset();
  });

  group('회원가입 위젯 테스트', () {
    testWidgets(
      '이름 입력 테스트',
      (WidgetTester tester) async {
        /// Given
        const name = 'test';
        await tester.pumpWidget(testWidget);

        /// When
        await tester.enterText(
          SignUpPageKey.name.toFinder(),
          name,
        );
        await tester.pumpAndSettle();

        /// Then
        expect(find.text(name), findsOneWidget);
        verify(
          () => signUpBloc.add(any(that: isA<SignUpNameInputted>())),
        ).called(1);
      },
    );

    testWidgets(
      '생년월일 입력 테스트',
      (WidgetTester tester) async {
        /// Given
        const birthDate = '20241124';
        await tester.pumpWidget(testWidget);

        /// When
        await tester.enterText(
          SignUpPageKey.birthDate.toFinder(),
          birthDate,
        );
        await tester.pumpAndSettle();

        /// Then
        expect(find.text(birthDate), findsOneWidget);
        verify(
          () => signUpBloc.add(any(that: isA<SignUpBirthDateInputted>())),
        ).called(1);
      },
    );

    testWidgets(
      '성별 남자 선택 테스트',
      (WidgetTester tester) async {
        /// Given
        whenListen(
          signUpBloc,
          Stream.fromIterable([
            initSignUpBlocState,
            initSignUpBlocState.copyWith(
              gender: GenderType.man,
            ),
          ]),
        );
        const key = Key('gender_man');
        final finder = find.byKey(key);
        await tester.pumpWidget(testWidget);

        /// When
        await tester.tap(finder);
        await tester.pumpAndSettle();

        /// Then
        final manBtn = tester.widget<GenderOption>(finder);
        await tester.pumpAndSettle();

        expect(manBtn.isSelected, isTrue);
        verify(
          () => signUpBloc.add(any(that: isA<SignUpGenderSelected>())),
        ).called(1);
      },
    );

    testWidgets(
      '성별 여자 탭 선택 테스트',
      (WidgetTester tester) async {
        /// Given
        whenListen(
          signUpBloc,
          Stream.fromIterable([
            initSignUpBlocState,
            initSignUpBlocState.copyWith(
              gender: GenderType.woman,
            ),
          ]),
        );
        const key = Key('gender_woman');
        final finder = find.byKey(key);
        await tester.pumpWidget(testWidget);

        /// When
        await tester.tap(finder);
        await tester.pumpAndSettle();

        /// Then
        final womanBtn = tester.widget<GenderOption>(finder);
        await tester.pumpAndSettle();

        expect(womanBtn.isSelected, isTrue);
        verify(
          () => signUpBloc.add(any(that: isA<SignUpGenderSelected>())),
        ).called(1);
      },
    );

    testWidgets('휴대폰 번호 입력 테스트', (WidgetTester tester) async {
      /// Given
      const phone = '01012345678';
      whenListen(
        phoneAuthBloc,
        Stream.fromIterable([
          initPhoneBlocState,
          initPhoneBlocState.copyWith(
            phone: const Phone(phone),
          ),
        ]),
      );
      whenListen(
        signUpBloc,
        Stream.fromIterable([
          initSignUpBlocState,
          initSignUpBlocState.copyWith(
            phone: const Phone(phone),
          ),
        ]),
      );
      await tester.pumpWidget(testWidget);

      /// When
      await tester.enterText(
        PhoneAuthWidgetKey.phoneInput.toFinder(),
        phone,
      );
      await tester.pumpAndSettle();

      /// Then
      expect(find.text(phone), findsOneWidget);
      verify(() => signUpBloc.add(any(that: isA<SignUpPhoneInputted>())));
    });

    testWidgets('인증번호 입력 후 인증 성공 테스트', (WidgetTester tester) async {
      /// Given
      const phone = '01012345678';
      const authCode = '111111';
      whenListen(
        phoneAuthBloc,
        Stream.fromIterable([
          initPhoneBlocState.copyWith(
            phone: const Phone(phone),
          ),
          initPhoneBlocState.copyWith(
            authCode: const AuthCode(authCode),
          ),
        ]),
      );
      whenListen(
        signUpBloc,
        Stream.fromIterable([
          initSignUpBlocState.copyWith(
            phone: const Phone(phone),
          ),
          initSignUpBlocState.copyWith(
            isAuthPhone: true,
          ),
        ]),
      );
      await tester.pumpWidget(testWidget);

      /// When
      await tester.enterText(
        PhoneAuthWidgetKey.authCodeInput.toFinder(),
        authCode,
      );
      await tester.pumpAndSettle();

      /// Then
      expect(find.text(authCode), findsOneWidget);
      verify(() => signUpBloc.add(any(that: isA<SignUpPhoneAuthChanged>())));
    });

    testWidgets('이메일 입력 테스트', (WidgetTester tester) async {
      /// Given
      const email = 'test@test.co.kr';
      whenListen(
        emailCheckBloc,
        Stream.fromIterable([
          initEmailBlocState,
          initEmailBlocState.copyWith(
            email: const Email(value: email),
          ),
        ]),
      );
      whenListen(
        signUpBloc,
        Stream.fromIterable([
          initSignUpBlocState,
          initSignUpBlocState.copyWith(
            loginId: const Email(value: email),
          ),
        ]),
      );
      await tester.pumpWidget(testWidget);

      /// When
      await tester.enterText(
        EmailDuplicateCheckKey.emailInput.toFinder(),
        email,
      );
      // 이메일 입력 Debounce 만큼 대기
      await tester.pumpAndSettle(const Duration(milliseconds: 500));

      /// Then
      expect(find.text(email), findsOneWidget);
      verify(() => signUpBloc.add(any(that: isA<SignUpLoginIdInputted>())));
    });

    testWidgets('비밀번호 입력 테스트', (WidgetTester tester) async {
      /// Given
      const password = '123qwe!@';
      whenListen(
        signUpBloc,
        Stream.fromIterable([
          initSignUpBlocState,
          initSignUpBlocState.copyWith(
            password: const Password(password),
            isPasswordErrorVisible: VisibleType.visible,
          ),
        ]),
      );
      await tester.pumpWidget(testWidget);

      /// When
      await tester.enterText(
        SignUpPageKey.password.toFinder(),
        password,
      );
      await tester.pumpAndSettle();

      /// Then
      expect(SignUpPageKey.passwordVerify.toErrorFinder(), findsOneWidget);
      verify(
        () => signUpBloc.add(any(that: isA<SignUpPasswordInputted>())),
      );
    });

    testWidgets('비밀번호 확인 테스트', (WidgetTester tester) async {
      /// Given
      const password = '123qwe!@';
      whenListen(
        signUpBloc,
        Stream.fromIterable([
          initSignUpBlocState,
          initSignUpBlocState.copyWith(
            passwordVerify: const Password(password),
            isPasswordErrorVisible: VisibleType.visible,
          ),
        ]),
      );
      await tester.pumpWidget(testWidget);

      /// When
      await tester.enterText(
        SignUpPageKey.passwordVerify.toFinder(),
        password,
      );
      await tester.pumpAndSettle();

      /// Then
      expect(SignUpPageKey.passwordVerify.toErrorFinder(), findsOneWidget);
      verify(
        () => signUpBloc.add(any(that: isA<SignUpPasswordVerifyInputted>())),
      );
    });

    testWidgets('비밀번호 및 비밀번호 확인 정상 입력 테스트', (WidgetTester tester) async {
      /// Given
      const password = '123qwe!@';
      whenListen(
        signUpBloc,
        Stream.fromIterable([
          initSignUpBlocState,
          initSignUpBlocState.copyWith(
            password: const Password(password),
            passwordVerify: const Password(password),
            isPasswordErrorVisible: VisibleType.invisible,
          ),
        ]),
      );
      await tester.pumpWidget(testWidget);

      /// When
      await tester.enterText(
        SignUpPageKey.password.toFinder(),
        password,
      );
      await tester.enterText(
        SignUpPageKey.passwordVerify.toFinder(),
        password,
      );
      await tester.pumpAndSettle();

      /// Then
      expect(find.text(password), findsNWidgets(2));
      expect(SignUpPageKey.passwordVerify.toErrorFinder(), findsNothing);
      verify(
        () => signUpBloc.add(any(that: isA<SignUpPasswordInputted>())),
      );
      verify(
        () => signUpBloc.add(any(that: isA<SignUpPasswordVerifyInputted>())),
      );
    });

    testWidgets('회원가입 성공 테스트', (WidgetTester tester) async {
      /// Given
      whenListen(
        signUpBloc,
        Stream.fromIterable([
          initSignUpBlocState,
          initSignUpBlocState.copyWith(
            status: BaseBlocStatus.loading(),
          ),
          initSignUpBlocState.copyWith(
            status: BaseBlocStatus.success(),
          ),
        ]),
      );
      await tester.pumpWidget(testWidget);

      /// When
      await tester.tap(SignUpPageKey.submitBtn.toFinder());
      await tester.pumpAndSettle();

      /// Then
      expect(signUpBloc.state.status, isA<BaseBlocStatusSuccess>());
      verify(
        () => getItAppRouter.back(),
      ).called(1);
    });

    testWidgets('회원가입 실패 테스트', (WidgetTester tester) async {
      /// Given
      whenListen(
        signUpBloc,
        Stream.fromIterable([
          initSignUpBlocState,
          initSignUpBlocState.copyWith(
            status: BaseBlocStatus.loading(),
          ),
          initSignUpBlocState.copyWith(
            status: BaseBlocStatus.failure(),
          ),
        ]),
      );
      await tester.pumpWidget(testWidget);

      /// When
      await tester.tap(SignUpPageKey.submitBtn.toFinder());
      await tester.pumpAndSettle();

      /// Then
      expect(signUpBloc.state.status, isA<BaseBlocStatusFailure>());
      verifyNever(
            () => getItAppRouter.back(),
      );
    });
  });
}
