part of 'login_result_entity.dart';

extension LoginResultEntityConverter on LoginResultEntity {
  /// isLoggedIn -> Bloc Status
  BaseBlocStatus get blocStatus =>
      isLoggedIn ? BaseBlocStatus.success() : BaseBlocStatus.failure();

  /// Dto -> Entity
  static LoginResultEntity fromDto({
    required ApiResponse<LoginResponseDto> result,
  }) {
    return result.maybeWhen(
      success: (dto) {
        return LoginResultEntity(
          isLoggedIn: dto.status,
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
