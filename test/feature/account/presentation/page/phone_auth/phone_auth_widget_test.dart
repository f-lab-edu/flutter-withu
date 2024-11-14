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

  late MockPhoneAuthBloc mockBloc;
  late Widget testWidget;
  late PhoneAuthState initialState;

  setUpAll(() {
    registerFallbackValue(FakePhoneAuthEvent());
    registerFallbackValue(FakePhoneAuthState());
  });

  setUp(() {
    mockBloc = MockPhoneAuthBloc();
    initialState = PhoneAuthState(
      status: BaseBlocStatus.initial(),
    );
    when(() => mockBloc.state).thenReturn(initialState);
    getIt.registerFactory<PhoneAuthBloc>(() => mockBloc);
    testWidget = const MaterialApp(
      home: Scaffold(
        body: PhoneAuthWidget(),
      ),
    );
  });

  tearDown(() {
    mockBloc.close();
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
          () => mockBloc.add(PhoneAuthPhoneInputted(value: phone)),
        ).called(1);
      },
    );

    testWidgets(
      '유효한 번호가 입력되었을 때 인증번호 전송 버튼 클릭 테스트',
      (WidgetTester tester) async {
        /// Given
        const phone = "01012345678";
        when(() => mockBloc.state).thenReturn(
          initialState.copyWith(phone: const Phone(phone)),
        );
        await tester.pumpWidget(testWidget);
        await tester.enterText(PhoneAuthWidgetKey.phoneInput.toFinder(), phone);
        await tester.pumpAndSettle();

        /// When
        await tester.tap(PhoneAuthWidgetKey.sendAuthBtn.toFinder());
        await tester.pumpAndSettle();

        /// Then
        verify(() => mockBloc.add(PhoneAuthAuthCodeSent())).called(1);
      },
    );

    testWidgets(
      '유효하지 않는 번호가 입력되었을 때 인증번호 전송 버튼 클릭 테스트',
      (WidgetTester tester) async {
        /// Given
        const phone = "012345";
        when(() => mockBloc.state).thenReturn(
          initialState.copyWith(phone: const Phone(phone)),
        );
        await tester.pumpWidget(testWidget);
        await tester.enterText(PhoneAuthWidgetKey.phoneInput.toFinder(), phone);
        await tester.pumpAndSettle();

        /// When
        await tester.tap(PhoneAuthWidgetKey.sendAuthBtn.toFinder());
        await tester.pumpAndSettle();

        /// Then
        verifyNever(() => mockBloc.add(PhoneAuthAuthCodeSent()));
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
        final authCodeInputKey = PhoneAuthWidgetKey.authCodeInput.name;
        final errorKey = Key("${authCodeInputKey}_error");
        expect(find.text(authCode), findsOneWidget);
        expect(find.byKey(errorKey), findsNothing);
        verify(
          () => mockBloc.add(PhoneAuthAuthCodeInputted(value: authCode)),
        ).called(1);
      },
    );

    testWidgets(
      '유효하지 않는 인증번호 입력 테스트',
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

        /// 실패 응답 설정
        when(() => mockBloc.state).thenReturn(initialState.copyWith(
          authCodeErrorVisible: VisibleType.invisible,
        ));

        /// Then
        final authCodeInputKey = PhoneAuthWidgetKey.authCodeInput.name;
        final errorKey = Key("${authCodeInputKey}_error");
        expect(find.text(authCode), findsOneWidget);
        expect(find.byKey(errorKey), findsOneWidget);
        verify(
          () => mockBloc.add(PhoneAuthAuthCodeInputted(value: authCode)),
        ).called(1);
      },
    );
  });
}
