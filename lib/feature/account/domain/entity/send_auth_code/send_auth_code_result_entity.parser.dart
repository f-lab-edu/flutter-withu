part of 'send_auth_code_result_entity.dart';

extension SendAuthCodeResultEntityParser on SendAuthCodeResultEntity {
  /// Dto -> Entity
  static SendAuthCodeResultEntity fromDto(VerifyPhoneResponseDto dto) {
    return SendAuthCodeResultEntity(
      status: dto.status,
      message: dto.message,
    );
  }
}
