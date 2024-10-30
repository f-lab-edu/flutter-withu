part of 'login_result_entity.dart';

extension LoginResultEntityParser on LoginResultEntity {
  static LoginResultEntity fromDto({
    required ApiResponse<LoginResponseDto> result,
  }) {
    return result.maybeWhen(
      success: (dto) {
        return LoginResultEntity(
          isLoggedIn: dto.status,
          message: dto.message,
        );
      },
      orElse: () {
        return LoginResultEntity(
          isLoggedIn: false,
          message: StringRes.serverError.tr,
        );
      },
    );
  }
}
