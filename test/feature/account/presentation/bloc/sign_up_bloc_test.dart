import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

class MockSignUpBloc extends Mock implements SignUpUseCase {}

void main() {
  late MockSignUpBloc useCase;
  late SignUpBloc signUpBloc;

  setUpAll(() {
    registerFallbackValue(SignUpRequestEntityMock.mock());
  });

  setUp(() {
    useCase = MockSignUpBloc();
    signUpBloc = SignUpBloc(signUpUseCase: useCase);
  });

  group('회원가입 Bloc 테스트', () {
    test('초기 상태 테스트', () {
      expect(signUpBloc.state.status, isA<BaseBlocStatusInitial>());
      expect(signUpBloc.state.name, equals(Name.empty));
      expect(signUpBloc.state.birthDate, equals(BirthDate.empty));
      expect(signUpBloc.state.gender, equals(GenderType.none));
      expect(signUpBloc.state.phone, equals(Phone.empty));
      expect(signUpBloc.state.isAuthPhone, isFalse);
      expect(signUpBloc.state.loginId, equals(Email.empty));
      expect(signUpBloc.state.isUniqueId, isFalse);
      expect(signUpBloc.state.password, equals(Password.empty));
      expect(signUpBloc.state.passwordVerify, equals(Password.empty));
      expect(signUpBloc.state.isPasswordObscure, isTrue);
      expect(signUpBloc.state.isPasswordErrorVisible, VisibleType.none);
    });

    blocTest(
      '로딩 상태 설정 테스트',
      build: () => signUpBloc,
      act: (bloc) => bloc.add(SignUpLoadingSet()),
      expect: () => [
        isA<SignUpState>().having(
          (state) => state.status,
          '로딩 상태여야 한다.',
          isA<BaseBlocStatusLoading>(),
        ),
      ],
    );

    blocTest(
      '로딩 상태 해제 테스트',
      build: () => signUpBloc,
      setUp: () {
        signUpBloc.emit(signUpBloc.state.copyWith(
          status: BaseBlocStatus.loading(),
        ));
      },
      act: (bloc) => bloc.add(SignUpLoadingUnSet()),
      expect: () => [
        isA<SignUpState>().having(
          (state) => state.status,
          '초기화 상태로 변경되어야 한다.',
          isA<BaseBlocStatusInitial>(),
        ),
      ],
    );

    blocTest(
      '메시지 초기화 테스트',
      build: () => signUpBloc,
      setUp: () {
        signUpBloc.emit(signUpBloc.state.copyWith(
          message: 'testMessage',
        ));
      },
      act: (bloc) => bloc.add(SignUpMessageCleared()),
      expect: () => [
        isA<SignUpState>().having(
          (state) => state.message,
          '메시지가 빈 값이어야 한다.',
          isEmpty,
        ),
      ],
    );

    blocTest(
      '이름 영어 2글자 이상 입력 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(SignUpNameInputted(value: 'test')),
      expect: () => [
        isA<SignUpState>()
            .having(
              (state) => state.name.value,
              '이름이 "test"여야 한다.',
              equals('test'),
            )
            .having(
              (state) => state.name.isValid,
              '유효성 검사에 통과해야 한다.',
              isTrue,
            ),
      ],
    );

    blocTest(
      '이름 숫자 입력 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(SignUpNameInputted(value: 'test12')),
      expect: () => [
        isA<SignUpState>()
            .having(
              (state) => state.name.value,
              '이름이 "test12"여야 한다.',
              equals('test12'),
            )
            .having(
              (state) => state.name.isValid,
              '유효성 검사에 실패해야 한다.',
              isFalse,
            ),
      ],
    );

    blocTest(
      '생년월일 정상 입력 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(SignUpBirthDateInputted(value: '20241121')),
      expect: () => [
        isA<SignUpState>()
            .having(
              (state) => state.birthDate.value,
              '생년월일이 "20241121"여야 한다.',
              equals('20241121'),
            )
            .having(
              (state) => state.birthDate.isValid,
              '유효성 검사에 통과해야 한다.',
              isTrue,
            )
            .having(
              (state) => state.birthDate.date,
              '생년월일이 날짜 타입으로 변환되어야 한다.',
              isA<DateTime>(),
            ),
      ],
    );

    blocTest(
      '생년월일 실패 입력 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(SignUpBirthDateInputted(value: '19991340')),
      expect: () => [
        isA<SignUpState>()
            .having(
              (state) => state.birthDate.value,
              '생년월일이 "19991340"여야 한다.',
              equals('19991340'),
            )
            .having(
              (state) => state.birthDate.isValid,
              '유효성 검사에 실패해야 한다.',
              isFalse,
            )
            .having(
              (state) => state.birthDate.date,
              '생년월일이 날짜 타입으로 변환되어야 한다.',
              isA<DateTime>(),
            ),
      ],
    );

    blocTest(
      '성별 여자 선택 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(SignUpGenderSelected(gender: GenderType.woman)),
      expect: () => [
        isA<SignUpState>().having(
          (state) => state.gender,
          '성별이 여자여야 한다.',
          equals(GenderType.woman),
        ),
      ],
    );

    blocTest(
      '성별 남자 선택 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(SignUpGenderSelected(gender: GenderType.man)),
      expect: () => [
        isA<SignUpState>().having(
          (state) => state.gender,
          '성별이 남자여야 한다.',
          equals(GenderType.man),
        ),
      ],
    );

    blocTest(
      '휴대폰 정상 입력 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(
        SignUpPhoneInputted(phone: const Phone('01012345678')),
      ),
      expect: () => [
        isA<SignUpState>()
            .having(
              (state) => state.phone.value,
              '휴대폰이 "01012345678"여야 한다.',
              equals('01012345678'),
            )
            .having(
              (state) => state.phone.isValid,
              '유효성 검사에 통과해야 한다.',
              isTrue,
            ),
      ],
    );

    blocTest(
      '휴대폰 실패 입력 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(
        SignUpPhoneInputted(phone: const Phone('0101234')),
      ),
      expect: () => [
        isA<SignUpState>()
            .having(
              (state) => state.phone.value,
              '휴대폰이 "0101234"여야 한다.',
              equals('0101234'),
            )
            .having(
              (state) => state.phone.isValid,
              '유효성 검사에 실패해야 한다.',
              isFalse,
            ),
      ],
    );

    blocTest(
      '휴대폰 인증 변경 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(
        SignUpPhoneAuthChanged(isAuth: true),
      ),
      expect: () => [
        isA<SignUpState>().having(
          (state) => state.isAuthPhone,
          '휴대폰 인증이 true 여야 한다.',
          isTrue,
        ),
      ],
    );

    blocTest(
      '휴대폰 인증 변경 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(
        SignUpPhoneAuthChanged(isAuth: false),
      ),
      expect: () => [
        isA<SignUpState>().having(
          (state) => state.isAuthPhone,
          '휴대폰 인증이 false 여야 한다.',
          isFalse,
        ),
      ],
    );

    blocTest(
      '비밀번호 암호화 표시 토글 테스트',
      build: () => signUpBloc,
      setUp: () {
        signUpBloc.emit(
          signUpBloc.state.copyWith(isPasswordObscure: false),
        );
      },
      act: (bloc) => bloc.add(
        SignUpPasswordObscureToggled(),
      ),
      expect: () => [
        isA<SignUpState>().having(
          (state) => state.isPasswordObscure,
          'true 여야 한다.',
          isTrue,
        ),
      ],
    );

    blocTest(
      '비밀번호 암호화 숨김 토글 테스트',
      build: () => signUpBloc,
      setUp: () {
        signUpBloc.emit(
          signUpBloc.state.copyWith(isPasswordObscure: true),
        );
      },
      act: (bloc) => bloc.add(
        SignUpPasswordObscureToggled(),
      ),
      expect: () => [
        isA<SignUpState>().having(
          (state) => state.isPasswordObscure,
          'false 여야 한다.',
          isFalse,
        ),
      ],
    );

    blocTest(
      '비밀번호 정상 입력 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(
        SignUpPasswordInputted(value: '123qwe!@'),
      ),
      expect: () => [
        isA<SignUpState>()
            .having(
              (state) => state.password.value,
              '123qwe!@ 여야 한다.',
              equals('123qwe!@'),
            )
            .having(
              (state) => state.password.isValid,
              '유효성 검사에 통과해야 한다.',
              isTrue,
            ),
        isA<SignUpState>().having(
          (state) => state.isPasswordErrorVisible,
          '비밀번화 확인이 입력되어 있지 않기 때문에 에러가 표시되어야 한다.',
          equals(VisibleType.visible),
        ),
      ],
    );

    blocTest(
      '비밀번호 실패 입력 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(
        SignUpPasswordInputted(value: '123qwe'),
      ),
      expect: () => [
        isA<SignUpState>()
            .having(
              (state) => state.password.value,
              '123qwe 여야 한다.',
              equals('123qwe'),
            )
            .having(
              (state) => state.password.isValid,
              '유효성 검사에 실패해야 한다.',
              isFalse,
            ),
        isA<SignUpState>().having(
          (state) => state.isPasswordErrorVisible,
          '비밀번화 확인이 입력되어 있지 않기 때문에 에러가 표시되어야 한다.',
          equals(VisibleType.visible),
        ),
      ],
    );

    blocTest(
      '비밀번호 확인 정상 입력 테스트',
      build: () => signUpBloc,
      setUp: () {
        signUpBloc.emit(signUpBloc.state.copyWith(
          password: const Password('123qwe!@'),
        ));
      },
      act: (bloc) => bloc.add(
        SignUpPasswordVerifyInputted(value: '123qwe!@'),
      ),
      expect: () => [
        isA<SignUpState>()
            .having(
              (state) => state.passwordVerify.value,
              '123qwe!@ 여야 한다.',
              equals('123qwe!@'),
            )
            .having(
              (state) => state.passwordVerify.isValid,
              '유효성 검사에 통과해야 한다.',
              isTrue,
            ),
        isA<SignUpState>().having(
          (state) => state.isPasswordErrorVisible,
          'password와 passwordVerify가 동일하기 때문에 에러가 표시되면 안된다.',
          equals(VisibleType.invisible),
        ),
      ],
    );

    blocTest(
      '비밀번호 확인 실패 입력 테스트',
      build: () => signUpBloc,
      setUp: () {
        signUpBloc.emit(signUpBloc.state.copyWith(
          password: const Password('123qwe!@'),
        ));
      },
      act: (bloc) => bloc.add(
        SignUpPasswordInputted(value: '123qwe'),
      ),
      expect: () => [
        isA<SignUpState>()
            .having(
              (state) => state.password.value,
              '123qwe 여야 한다.',
              equals('123qwe'),
            )
            .having(
              (state) => state.password.isValid,
              '유효성 검사에 실패해야 한다.',
              isFalse,
            ),
        isA<SignUpState>().having(
          (state) => state.isPasswordErrorVisible,
          'password와 passwordVerify가 다르기 때문에 에러가 표시되어야 한다.',
          equals(VisibleType.visible),
        ),
      ],
    );

    blocTest(
      '비밀번호 미입력 상태에서 비밀번호 확인 정상 입력 테스트',
      build: () => signUpBloc,
      setUp: () {},
      act: (bloc) => bloc.add(
        SignUpPasswordInputted(value: '123qwe!@'),
      ),
      expect: () => [
        isA<SignUpState>()
            .having(
              (state) => state.password.value,
              '123qwe!@ 여야 한다.',
              equals('123qwe!@'),
            )
            .having(
              (state) => state.password.isValid,
              '유효성 검사에 통과해야 한다.',
              isTrue,
            ),
        isA<SignUpState>().having(
          (state) => state.isPasswordErrorVisible,
          'password가 유효성 검사에 실패했기 때문에 에러가 표시된다.',
          equals(VisibleType.visible),
        ),
      ],
    );

    blocTest(
      '회원가입 성공 테스트',
      build: () => signUpBloc,
      setUp: () {
        when(
          () => useCase.exec(entity: any(named: 'entity')),
        ).thenAnswer(
          (_) async => SignUpResultEntityMock.success(),
        );
      },
      act: (bloc) => bloc.add(SignUpSubmitPressed()),
      expect: () => [
        isA<SignUpState>().having(
          (state) => state.status,
          '로딩 상태 확인',
          isA<BaseBlocStatusLoading>(),
        ),
        isA<SignUpState>().having(
          (state) => state.status,
          '성공 상태 확인',
          isA<BaseBlocStatusSuccess>(),
        ),
      ],
      verify: (_) {
        verify(
          () => useCase.exec(entity: any(named: 'entity')),
        ).called(1);
      },
    );

    blocTest(
      '회원가입 실패 테스트',
      build: () => signUpBloc,
      setUp: () {
        when(
          () => useCase.exec(entity: any(named: 'entity')),
        ).thenAnswer(
          (_) async => SignUpResultEntityMock.failure(),
        );
      },
      act: (bloc) => bloc.add(SignUpSubmitPressed()),
      expect: () => [
        isA<SignUpState>().having(
          (state) => state.status,
          '로딩 상태 확인',
          isA<BaseBlocStatusLoading>(),
        ),
        isA<SignUpState>()
            .having(
              (state) => state.status,
              '실패 상태 확인',
              isA<BaseBlocStatusFailure>(),
            )
            .having(
              (state) => state.message,
              '실패 메시지 확인',
              '회원 가입 실패',
            ),
      ],
      verify: (_) {
        verify(
          () => useCase.exec(entity: any(named: 'entity')),
        ).called(1);
      },
    );
  });
}
