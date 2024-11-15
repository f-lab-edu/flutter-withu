import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/types/type.dart';
import 'package:withu_app/core/utils/utils.dart';
import 'package:withu_app/feature/account/account.dart';

import '../../../../../core/utils/mixin/widget_key_utils.dart';

class MockPhoneAuthBloc extends MockBloc<PhoneAuthEvent, PhoneAuthState>
    implements PhoneAuthBloc {}

class FakePhoneAuthEvent extends Fake implements PhoneAuthEvent {}

class FakePhoneAuthState extends Fake implements PhoneAuthState {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late Widget testWidget;
  late MockPhoneAuthBloc phoneAuthBloc;
  late PhoneAuthState initialState;

  setUpAll(() {
    registerFallbackValue(FakePhoneAuthEvent());
    registerFallbackValue(FakePhoneAuthState());
  });

  setUp(() {
    phoneAuthBloc = MockPhoneAuthBloc();
    initialState = PhoneAuthState(
      status: BaseBlocStatus.initial(),
    );
    when(() => phoneAuthBloc.state).thenReturn(initialState);
    getIt.registerFactory<PhoneAuthBloc>(() => phoneAuthBloc);
    testWidget = const MaterialApp(
      home: Scaffold(
        body: PhoneAuthWidget(),
      ),
    );
  });

  tearDown(() {
    phoneAuthBloc.close();
    getIt.reset();
  });

  group('PhoneAuthWidget 테스트', () {
    testWidgets(
      '휴대폰 번호 입력 테스트',
      (WidgetTester tester) async {
        /// Given
        const phone = "01012345678";
        await tester.pumpWidget(testWidget);

        /// When
        await tester.enterText(PhoneAuthWidgetKey.phoneInput.toFinder(), phone);
        await tester.pumpAndSettle();

        /// Then
        expect(find.text(phone), findsOneWidget);
        verify(
          () => phoneAuthBloc.add(PhoneAuthPhoneInputted(value: phone)),
        ).called(1);
      },
    );

    testWidgets(
      '유효한 번호가 입력되었을 때 인증번호 전송 버튼 클릭 테스트',
      (WidgetTester tester) async {
        /// Given
        const phone = "01012345678";
        when(() => phoneAuthBloc.state).thenReturn(
          initialState.copyWith(phone: const Phone(phone)),
        );
        await tester.pumpWidget(testWidget);
        await tester.enterText(PhoneAuthWidgetKey.phoneInput.toFinder(), phone);
        await tester.pumpAndSettle();

        /// When
        await tester.tap(PhoneAuthWidgetKey.sendAuthBtn.toFinder());
        await tester.pumpAndSettle();

        /// Then
        verify(() => phoneAuthBloc.add(PhoneAuthAuthCodeSent())).called(1);
      },
    );

    testWidgets(
      '유효하지 않는 번호가 입력되었을 때 인증번호 전송 버튼 클릭 테스트',
      (WidgetTester tester) async {
        /// Given
        const phone = "012345";
        when(() => phoneAuthBloc.state).thenReturn(
          initialState.copyWith(phone: const Phone(phone)),
        );
        await tester.pumpWidget(testWidget);
        await tester.enterText(PhoneAuthWidgetKey.phoneInput.toFinder(), phone);
        await tester.pumpAndSettle();

        /// When
        await tester.tap(PhoneAuthWidgetKey.sendAuthBtn.toFinder());
        await tester.pumpAndSettle();

        /// Then
        verifyNever(() => phoneAuthBloc.add(PhoneAuthAuthCodeSent()));
      },
    );

    testWidgets(
      '유효한 인증번호 입력 테스트',
      (WidgetTester tester) async {
        /// Given
        const authCode = "123456";
        await tester.pumpWidget(testWidget);

        /// When
        await tester.enterText(
          PhoneAuthWidgetKey.authCodeInput.toFinder(),
          authCode,
        );
        await tester.pumpAndSettle();

        /// Then
        expect(find.text(authCode), findsOneWidget);
        expect(PhoneAuthWidgetKey.authCodeInputError.toFinder(), findsNothing);
        verify(
          () => phoneAuthBloc.add(PhoneAuthAuthCodeInputted(value: authCode)),
        ).called(1);
      },
    );

    testWidgets(
      '유효하지 않는 인증번호 입력 테스트',
      (WidgetTester tester) async {
        /// Given
        const authCode = "123456";
        whenListen(
          phoneAuthBloc,
          Stream.fromIterable([
            initialState,
            initialState.copyWith(
              authCodeErrorVisible: VisibleType.visible,
            ),
          ]),
          initialState: initialState,
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
        expect(
          PhoneAuthWidgetKey.authCodeInputError.toFinder(),
          findsOneWidget,
        );
        verify(
          () => phoneAuthBloc.add(PhoneAuthAuthCodeInputted(value: authCode)),
        ).called(1);
      },
    );
  });
}
