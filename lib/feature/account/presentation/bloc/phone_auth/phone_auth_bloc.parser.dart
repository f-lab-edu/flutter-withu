part of 'phone_auth_bloc.dart';

extension PhoneAuthBlocParser on PhoneAuthBloc {
  AuthCodeVerificationEntity toEntity() {
    return AuthCodeVerificationEntity(
      phone: state.phone.value,
      authCode: state.authCode.value,
    );
  }
}
