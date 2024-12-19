import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/types/type.dart';
import 'package:withu_app/core/utils/utils.dart';
import 'package:withu_app/feature/account/account.dart';

import '../../../../../core/utils/mixin/widget_key_utils.dart';

class MockEmailDuplicateCheckBloc
    extends MockBloc<EmailDuplicateCheckEvent, EmailDuplicateCheckState>
    implements EmailDuplicateCheckBloc {}

class FakeEvent extends Fake implements EmailDuplicateCheckEvent {}

class FakeState extends Fake implements EmailDuplicateCheckState {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockEmailDuplicateCheckBloc mockBloc;
  late Widget testWidget;
  late EmailDuplicateCheckState initialState;

  setUpAll(() {
    registerFallbackValue(FakeEvent());
    registerFallbackValue(FakeState());
  });

  setUp(() {
    mockBloc = MockEmailDuplicateCheckBloc();
    initialState = EmailDuplicateCheckState(
      status: BaseBlocStatus.initial(),
    );

    when(() => mockBloc.state).thenReturn(initialState);
    getIt.registerFactory<EmailDuplicateCheckBloc>(() => mockBloc);

    testWidget = MaterialApp(
      home: Scaffold(
        body: EmailDuplicateCheckWidget(),
      ),
    );
  });

  tearDown(() {
    mockBloc.close();
    getIt.reset();
  });

  group('이메일 입력 및 중복 검사 위젯 테스트', () {
    testWidgets(
      '이메일을 입력하면 화면에 표시된다.',
      (WidgetTester tester) async {
        /// Given
        const email = 'test@test.com';
        await tester.pumpWidget(testWidget);

        /// When
        await tester.enterText(
          EmailDuplicateCheckKey.emailInput.toFinder(),
          email,
        );
        // Debounce 시간만큼 대기
        await tester.pumpAndSettle(const Duration(milliseconds: 500));

        /// Then
        expect(find.text(email), findsOneWidget);
        verify(
          () => mockBloc.add(
            EmailDuplicateCheckInputted(value: email),
          ),
        ).called(1);
      },
    );

    testWidgets(
      '중복된 이메일을 입력하면 에러 문구가 표시된다.',
      (WidgetTester tester) async {
        /// Given
        const email = 'test@test.com';
        whenListen(
          mockBloc,
          Stream.fromIterable([
            initialState,
            initialState.copyWith(
              errorText: '중복된 이메일입니다',
              errorVisible: VisibleType.visible,
            ),
          ]),
        );

        await tester.pumpWidget(testWidget);

        /// When
        await tester.enterText(
          EmailDuplicateCheckKey.emailInput.toFinder(),
          email,
        );
        await tester.pumpAndSettle(const Duration(milliseconds: 500));

        /// Then
        expect(find.text(email), findsOneWidget);
        expect(
            EmailDuplicateCheckKey.emailInputError.toFinder(), findsOneWidget);
        verify(
          () => mockBloc.add(EmailDuplicateCheckInputted(value: email)),
        ).called(1);
      },
    );

    testWidgets(
      '중복되지 않은 이메일을 입력하면 에러 문구가 표시되지 않는다.',
      (WidgetTester tester) async {
        /// Given
        const email = 'test@test.co.kr';
        whenListen(
          mockBloc,
          Stream.fromIterable([
            initialState,
            initialState.copyWith(
              errorText: '',
              errorVisible: VisibleType.invisible,
            ),
          ]),
        );

        await tester.pumpWidget(testWidget);

        /// When
        await tester.enterText(
          EmailDuplicateCheckKey.emailInput.toFinder(),
          email,
        );
        await tester.pumpAndSettle(const Duration(milliseconds: 500));

        /// Then
        expect(find.text(email), findsOneWidget);
        expect(EmailDuplicateCheckKey.emailInputError.toFinder(), findsNothing);
        verify(
          () => mockBloc.add(EmailDuplicateCheckInputted(value: email)),
        ).called(1);
      },
    );
  });
}
