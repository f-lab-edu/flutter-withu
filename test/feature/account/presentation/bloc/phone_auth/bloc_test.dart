import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

class MockAccountUseCase extends Mock implements AccountUseCase {}

class FakeAuthCodeVerificationEntity extends Mock
    implements AuthCodeVerificationEntity {}

void main() {
  late MockAccountUseCase mockUseCase;
  late PhoneAuthBloc phoneAuthBloc;
  const validPhone = "01012345678";
  const invalidPhone = "0101238";
  const validAuthCode = '123456';
  const invalidAuthCode = '098765';

  setUp(() {
    mockUseCase = MockAccountUseCase();
    phoneAuthBloc = PhoneAuthBloc(accountUseCase: mockUseCase);
    registerFallbackValue(FakeAuthCodeVerificationEntity());
  });

  test('초기화 상태', () {
    expect(phoneAuthBloc.state.status, isA<BaseBlocStatusInitial>());
    expect(phoneAuthBloc.state.phone, equals(Phone.empty));
    expect(phoneAuthBloc.state.authCode, equals(AuthCode.empty));
    expect(phoneAuthBloc.state.authCodeErrorVisible, equals(VisibleType.none));
  });

  blocTest(
    '휴대폰 번호 입력',
    build: () => phoneAuthBloc,
    act: (bloc) => bloc.add(PhoneAuthPhoneInputted(value: validPhone)),
    expect: () => [
      isA<PhoneAuthState>()
          .having(
            (state) => state.phone,
            'phone_auth.dart',
            const Phone(validPhone),
          )
          .having(
            (state) => state.phone.isValid,
            'phoneValid',
            isTrue,
          ),
    ],
  );

  blocTest(
    '유효하지 않은 휴대폰 번호 입력',
    build: () => phoneAuthBloc,
    act: (bloc) => bloc.add(PhoneAuthPhoneInputted(value: invalidPhone)),
    expect: () => [
      isA<PhoneAuthState>()
          .having(
            (state) => state.phone,
            'phone_auth.dart',
            const Phone(invalidPhone),
          )
          .having(
            (state) => state.phone.isValid,
            'phoneValid',
            isFalse,
          ),
    ],
  );

  blocTest(
    '인증번호 전송',
    build: () => phoneAuthBloc,
    setUp: () {
      when(
        () => mockUseCase.sendAuthCode(phone: any(named: 'phone_auth.dart')),
      ).thenAnswer(
        (_) async => SendAuthCodeResultEntityMock.success(),
      );
    },
    act: (bloc) => bloc.add(PhoneAuthAuthCodeSent()),
    verify: (_) {
      verify(
        () => mockUseCase.sendAuthCode(phone: any(named: 'phone_auth.dart')),
      ).called(1);
    },
  );

  blocTest(
    '유효한 인증번호 입력 ',
    build: () {
      return phoneAuthBloc
        ..emit(PhoneAuthState(
          status: BaseBlocStatus.initial(),
          phone: const Phone(validPhone),
        ));
    },
    setUp: () {
      when(
        () => mockUseCase.authCodeVerification(entity: any(named: 'entity')),
      ).thenAnswer(
        (_) async => true,
      );
    },
    act: (bloc) => bloc.add(PhoneAuthAuthCodeInputted(value: validAuthCode)),
    expect: () => [
      isA<PhoneAuthState>()
          .having(
            (state) => state.authCode,
            'authCode',
            const AuthCode(validAuthCode),
          )
          .having(
            (state) => state.authCode.isValid,
            'authCodeValid',
            isTrue,
          ),
      isA<PhoneAuthState>().having(
        (state) => state.authCodeErrorVisible,
        'authCodeErrorVisible',
        VisibleType.invisible,
      ),
    ],
    verify: (_) {
      verify(
        () => mockUseCase.authCodeVerification(entity: any(named: 'entity')),
      ).called(1);
    },
  );

  blocTest(
    '유효하지 않은 인증번호 입력 ',
    build: () => phoneAuthBloc
      ..emit(PhoneAuthState(
        status: BaseBlocStatus.initial(),
        phone: const Phone(validPhone),
      )),
    setUp: () {
      when(
        () => mockUseCase.authCodeVerification(entity: any(named: 'entity')),
      ).thenAnswer(
        (_) async => false,
      );
    },
    act: (bloc) => bloc.add(PhoneAuthAuthCodeInputted(value: invalidAuthCode)),
    expect: () => [
      isA<PhoneAuthState>()
          .having(
            (state) => state.authCode,
            'authCode',
            const AuthCode(invalidAuthCode),
          )
          .having(
            (state) => state.authCode.isValid,
            'authCodeValid',
            isTrue,
          ),
      isA<PhoneAuthState>().having(
        (state) => state.authCodeErrorVisible,
        'authCodeErrorVisible',
        VisibleType.visible,
      ),
    ],
    verify: (_) {
      verify(
        () => mockUseCase.authCodeVerification(entity: any(named: 'entity')),
      ).called(1);
    },
  );
}
