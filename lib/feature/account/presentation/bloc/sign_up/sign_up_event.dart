part of 'sign_up_bloc.dart';

abstract class SignUpEvent extends BaseBlocEvent {}

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

/// 비밀번호 입력 이벤트
class SignUpPasswordInputted extends SignUpEvent {
  final String value;

  SignUpPasswordInputted({required this.value});

  Password get password => Password(value);
}

/// 비밀번호 확인 입력 이벤트
class SignUpPasswordVerifyInputted extends SignUpEvent {
  final String value;

  SignUpPasswordVerifyInputted({required this.value});

  Password get password => Password(value);
}

/// 회원가입 버튼 클릭 이벤트.
class SignUpSubmitPressed extends SignUpEvent {}
