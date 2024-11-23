part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends BaseBlocEvent {}

/// 로딩 설정
class SignUpLoadingSet extends SignUpEvent {
  SignUpLoadingSet();
}

/// 로딩 설정 해제
class SignUpLoadingUnSet extends SignUpEvent {
  SignUpLoadingUnSet();
}

/// 메시지 클리어
class SignUpMessageCleared extends SignUpEvent {
  SignUpMessageCleared();
}

/// 이름 입력 이벤트
class SignUpNameInputted extends SignUpEvent {
  final String value;

  SignUpNameInputted({required this.value});

  Name get name => Name(value);
}

/// 생년월일 입력 이벤트
class SignUpBirthDateInputted extends SignUpEvent {
  final String value;

  SignUpBirthDateInputted({required this.value});

  BirthDate get birthDate => BirthDate(value);
}

/// 비밀번호 표시/숨기기 이벤트
class SignUpPasswordObscureToggled extends SignUpEvent {}

/// 성별 선택 이벤트
class SignUpGenderSelected extends SignUpEvent {
  final GenderType gender;

  SignUpGenderSelected({required this.gender});
}

/// 휴대폰 입력 이벤트
class SignUpPhoneInputted extends SignUpEvent {
  final Phone phone;

  SignUpPhoneInputted({required this.phone});
}

/// 휴대폰 인증 입력 이벤트
class SignUpPhoneAuthChanged extends SignUpEvent {
  final bool isAuth;

  SignUpPhoneAuthChanged({required this.isAuth});
}

/// 비밀번호 입력 이벤트
class SignUpPasswordInputted extends SignUpEvent {
  final String value;

  SignUpPasswordInputted({required this.value});

  Password get password => Password(value);
}

/// LoginId 입력 이벤트
class SignUpLoginIdInputted extends SignUpEvent {
  final Email loginId;

  SignUpLoginIdInputted({required this.loginId});
}

/// LoginId 인증 여부
class SignUpIsUniqueIdChanged extends SignUpEvent {
  final bool isUnique;

  SignUpIsUniqueIdChanged({required this.isUnique});
}

/// 비밀번호 확인 입력 이벤트
class SignUpPasswordVerifyInputted extends SignUpEvent {
  final String value;

  SignUpPasswordVerifyInputted({required this.value});

  Password get password => Password(value);
}

/// 회원가입 버튼 클릭 이벤트.
class SignUpSubmitPressed extends SignUpEvent {}
