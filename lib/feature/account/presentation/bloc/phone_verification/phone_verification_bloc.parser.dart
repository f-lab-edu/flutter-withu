part of 'phone_verification_bloc.dart';

extension PhoneVerificationBlocParser on PhoneVerificationBloc {
  AuthCodeVerificationEntity toEntity() {
    return AuthCodeVerificationEntity(
      phone: state.phone.value,
      authCode: state.authCode.value,
    );
  }
}
