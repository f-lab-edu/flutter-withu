import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';
import 'package:withu_app/feature/account/domain/usecase/email_duplicate_check/email_duplicate_check_usecase.dart';

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
      '비중복 이메일 입력 테스트',
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
              const Email(nonDuplicatedEmail),
            )
            .having(
              (state) => state.email.isValid,
              'emailValid',
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
      '중복 이메일 입력 테스트',
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
              const Email(duplicatedEmail),
            )
            .having(
              (state) => state.email.isValid,
              'emailValid',
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
      '서버 에러 테스트',
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
              const Email(duplicatedEmail),
            )
            .having(
              (state) => state.email.isValid,
              'emailValid',
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
