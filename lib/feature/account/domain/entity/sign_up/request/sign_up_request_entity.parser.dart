part of 'sign_up_request_entity.dart';

extension SignUpRequestEntityParser on SignUpRequestEntity {
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
