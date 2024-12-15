import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/types/account_type.dart';
import 'package:withu_app/core/utils/utils.dart';
import 'package:withu_app/feature/account/account.dart';

import '../../../../../core/utils/mixin/widget_key_utils.dart';
import '../phone_auth/phone_auth_widget_test.dart';

class MockFindAccountBloc extends MockBloc<FindAccountEvent, FindAccountState>
    implements FindAccountBloc {}

class FakeFindAccountEvent extends Fake implements FindAccountEvent {}

class FakeFindAccountState extends Fake implements FindAccountState {}

class MockFindIdBloc extends MockBloc<FindIdEvent, FindIdState>
    implements FindIdBloc {}

class FakeFindIdEvent extends Fake implements FindIdEvent {}

class FakeFindIdState extends Fake implements FindIdState {}

void main() {
  late MockFindAccountBloc findAccountBloc;
  late FindAccountState findAccountState;

  late MockFindIdBloc findIdBloc;
  late FindIdState findIdState;

  late MockPhoneAuthBloc phoneAuthBloc;
  late PhoneAuthState phoneAuthState;

  late Widget testWidget;

  setUpAll(() {
    registerFallbackValue(FakeFindAccountEvent());
    registerFallbackValue(FakeFindAccountState());
    registerFallbackValue(FakeFindIdEvent());
    registerFallbackValue(FakeFindIdState());
  });

  setUp(() {
    phoneAuthBloc = MockPhoneAuthBloc();
    phoneAuthState = PhoneAuthState(
      status: BaseBlocStatus.initial(),
    );

    findAccountBloc = MockFindAccountBloc();
    findAccountState = FindAccountState(
      status: BaseBlocStatus.initial(),
    );

    findIdBloc = MockFindIdBloc();
    findIdState = FindIdState(
      status: BaseBlocStatus.initial(),
    );

    when(() => findAccountBloc.state).thenReturn(findAccountState);
    when(() => findIdBloc.state).thenReturn(findIdState);
    when(() => phoneAuthBloc.state).thenReturn(phoneAuthState);

    getIt.registerFactory<PhoneAuthBloc>(() => phoneAuthBloc);
    getIt.registerFactory<FindAccountBloc>(() => findAccountBloc);
    getIt.registerFactory<FindIdBloc>(() => findIdBloc);

    testWidget = const MaterialApp(
      home: FindAccountPage(
        accountType: AccountType.company,
      ),
    );
  });

  tearDown(() {
    findAccountBloc.close();
    getIt.reset();
  });

  group('FindAccountPage 테스트', () {
    testWidgets(
      '아이디 탭에서 비밀번호 탭으로 변경 테스트',
      (WidgetTester tester) async {
        /// Given
        whenListen(
          findAccountBloc,
          Stream.fromIterable([
            findAccountState,
            findAccountState.copyWith(
              currentTab: FindAccountTabType.password,
            ),
          ]),
        );
        await tester.pumpWidget(testWidget);

        /// When
        await tester.tap(FindAccountTabType.password.toFinder());
        await tester.pumpAndSettle();

        /// Then
        expect(
          FindAccountTabType.password
              .toWidget<FindAccountTab>(tester)
              .isSelected,
          isTrue,
        );
        verify(
          () => findAccountBloc.add(
            any(that: isA<FindAccountTabPressed>()),
          ),
        ).called(1);
      },
    );

    testWidgets(
      '현재 탭이 비밀번호 탭일 때 아이디 탭을 누르면 변경되고 아이디 찾기 화면이 노출된다.',
      (WidgetTester tester) async {
        /// Given
        whenListen(
          findAccountBloc,
          Stream.fromIterable([
            findAccountState.copyWith(
              currentTab: FindAccountTabType.password,
            ),
            findAccountState.copyWith(
              currentTab: FindAccountTabType.id,
            ),
          ]),
        );
        await tester.pumpWidget(testWidget);

        /// When
        await tester.tap(FindAccountTabType.id.toFinder());
        await tester.pumpAndSettle();

        /// Then
        expect(
          FindAccountTabType.id.toWidget<FindAccountTab>(tester).isSelected,
          isTrue,
        );
        verify(
          () => findAccountBloc.add(
            any(that: isA<FindAccountTabPressed>()),
          ),
        ).called(1);
      },
    );
  });

  group('FindAccountBloc과 PhoneAuthBloc의 연결 테스트', () {
    testWidgets(
      'PhoneAuthBloc이 로딩상태라면, FindAccountPage에서 로딩 상태가 표시된다.',
      (WidgetTester tester) async {
        /// Given
        whenListen(
          phoneAuthBloc,
          Stream.fromIterable([
            phoneAuthState.copyWith(
              status: BaseBlocStatus.loading(),
            ),
          ]),
        );
        whenListen(
          findAccountBloc,
          Stream.fromIterable([
            findAccountState,
            findAccountState.copyWith(
              status: BaseBlocStatus.loading(),
            ),
          ]),
        );
        await tester.pumpWidget(testWidget);

        /// When

        /// Then
        expect(findAccountBloc.state.status, isA<BaseBlocStatusLoading>());
      },
    );

    testWidgets(
      '로딩 상태에서 FindAccountLoadingUnSet 이벤트를 통해 로딩이 종료된다.',
      (WidgetTester tester) async {
        /// Given
        final states = <BaseBlocStatus>[];
        final phoneAuthController = StreamController<PhoneAuthState>();
        final findAccountController = StreamController<FindAccountState>();
        whenListen(
          findAccountBloc,
          findAccountController.stream,
          initialState: findAccountState,
        );

        // 상태 변화 구독
        findAccountBloc.stream.listen((state) {
          states.add(state.status);
        });
        findAccountController.add(
          findAccountState.copyWith(status: BaseBlocStatus.initial()),
        );

        await tester.pumpWidget(testWidget);

        /// When
        phoneAuthBloc.add(PhoneAuthAuthCodeSent());
        await tester.pump(); // PhoneAuthAuthCodeSent 이벤트 처리

        // 상태 변경 시뮬레이션
        findAccountController.add(
          findAccountState.copyWith(status: BaseBlocStatus.loading()),
        );
        await tester.pump();

        findAccountController.add(
          findAccountState.copyWith(status: BaseBlocStatus.initial()),
        );
        await tester.pumpAndSettle();

        /// Then
        expect(states, [
          isA<BaseBlocStatusInitial>(), // 초기 상태
          isA<BaseBlocStatusLoading>(), // 로딩 상태
          isA<BaseBlocStatusInitial>(), // 다시 초기 상태로
        ]);

        // 정리
        phoneAuthController.close();
        findAccountController.close();
      },
    );
  });
}
