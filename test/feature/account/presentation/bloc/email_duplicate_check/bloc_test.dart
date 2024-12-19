import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

class MockUseCase extends Mock implements EmailDuplicateCheckUseCase {}

void main() {
  late MockUseCase useCase;
  late EmailDuplicateCheckBloc checkBloc;
  const duplicatedEmail = 'test@test.com';
  const nonDuplicatedEmail = 'test@test.co.kr';

  setUp(() {
    useCase = MockUseCase();
    checkBloc = EmailDuplicateCheckBloc(useCase: useCase);
  });

  group('이메일 중복 체크 Bloc 테스트', () {
    test('초기 상태 테스트', () {
      expect(checkBloc.state.status, isA<BaseBlocStatusInitial>());
      expect(checkBloc.state.email, Email.empty);
      expect(checkBloc.state.errorText, isEmpty);
      expect(checkBloc.state.errorVisible, VisibleType.none);
    });

    blocTest(
      '중복되지 않은 이메일 입력시 중복 검사에 통과해야 한다.',
      build: () => checkBloc,
      setUp: () {
        when(
          () => useCase.exec(email: any(named: 'email')),
        ).thenAnswer((_) async => '');
      },
      act: (bloc) => bloc.add(EmailDuplicateCheckInputted(
        value: nonDuplicatedEmail,
      )),
      expect: () => [
        isA<EmailDuplicateCheckState>()
            .having(
              (state) => state.email,
              'email',
              const Email(value: nonDuplicatedEmail),
            )
            .having(
              (state) => state.email.isValid,
              'emailValid',
              isTrue,
            ),
        isA<EmailDuplicateCheckState>().having(
          (state) => state.status.isLoading,
          'loading status',
          isTrue,
        ),
        isA<EmailDuplicateCheckState>()
            .having(
              (state) => state.errorText,
              'errorText',
              isEmpty,
            )
            .having(
              (state) => state.errorVisible,
              'errorVisible',
              equals(
                VisibleType.invisible,
              ),
            ),
      ],
      verify: (_) {
        verify(() => useCase.exec(email: any(named: "email"))).called(1);
      },
    );

    blocTest(
      '중복된 이메일 입력시 중복 검사에 실패해야 한다.',
      build: () => checkBloc,
      setUp: () {
        when(
          () => useCase.exec(email: any(named: 'email')),
        ).thenAnswer(
          (_) async => StringRes.emailDuplicateError.tr,
        );
      },
      act: (bloc) => bloc.add(EmailDuplicateCheckInputted(
        value: duplicatedEmail,
      )),
      expect: () => [
        isA<EmailDuplicateCheckState>()
            .having(
              (state) => state.email,
              'email',
              const Email(value: duplicatedEmail),
            )
            .having(
              (state) => state.email.isValid,
              'emailValid',
              isTrue,
            ),
        isA<EmailDuplicateCheckState>().having(
          (state) => state.status.isLoading,
          'loading status',
          isTrue,
        ),
        isA<EmailDuplicateCheckState>()
            .having(
              (state) => state.errorText,
              'errorText',
              StringRes.emailDuplicateError.tr,
            )
            .having(
              (state) => state.errorVisible,
              'errorVisible',
              equals(
                VisibleType.visible,
              ),
            ),
      ],
      verify: (_) {
        verify(() => useCase.exec(email: any(named: "email"))).called(1);
      },
    );

    blocTest(
      '중복 검사 API가 서버 에러를 반환할 경우 에러 문구가 노출된다.',
      build: () => checkBloc,
      setUp: () {
        when(
          () => useCase.exec(email: any(named: 'email')),
        ).thenAnswer(
          (_) async => StringRes.serverError.tr,
        );
      },
      act: (bloc) => bloc.add(EmailDuplicateCheckInputted(
        value: duplicatedEmail,
      )),
      expect: () => [
        isA<EmailDuplicateCheckState>()
            .having(
              (state) => state.email,
              'email',
              const Email(value: duplicatedEmail),
            )
            .having(
              (state) => state.email.isValid,
              'emailValid',
              isTrue,
            ),
        isA<EmailDuplicateCheckState>().having(
          (state) => state.status.isLoading,
          'loading',
          isTrue,
        ),
        isA<EmailDuplicateCheckState>()
            .having(
              (state) => state.errorText,
              'errorText',
              StringRes.serverError.tr,
            )
            .having(
              (state) => state.errorVisible,
              'errorVisible',
              equals(
                VisibleType.visible,
              ),
            ),
      ],
      verify: (_) {
        verify(() => useCase.exec(email: any(named: "email"))).called(1);
      },
    );
  });
}
