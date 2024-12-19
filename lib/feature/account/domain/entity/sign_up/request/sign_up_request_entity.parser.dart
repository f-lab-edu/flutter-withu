part of 'sign_up_request_entity.dart';

extension SignUpRequestEntityParser on SignUpRequestEntity {
  /// State -> Entity
  static SignUpRequestEntity fromState(SignUpState state) {
    return SignUpRequestEntity(
      name: state.name,
      birthDate: state.birthDate,
      gender: state.gender,
      phone: state.phone,
      loginId: state.loginId,
      password: state.password,
      loginType: LoginType.email,
    );
  }

  /// Entity -> Dto
  SignUpRequestDto toDto() {
    return SignUpRequestDto(
      loginId: loginId.value,
      password: password.value,
      type: loginType,
      gender: gender,
      name: name.value,
      birthDate: birthDate.date,
      cellPhoneNo: phone.value,
    );
  }
}
