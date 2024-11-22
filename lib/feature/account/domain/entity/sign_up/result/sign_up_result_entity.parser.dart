part of 'sign_up_result_entity.dart';

extension SignUpResultEntityParser on SignUpResultEntity {
  /// Entity -> Dto
  static SignUpResultEntity fromDto(SignUpResponseDto dto) {
    return SignUpResultEntity(
      status: dto.info.status,
      message: dto.info.message,
    );
  }
}
