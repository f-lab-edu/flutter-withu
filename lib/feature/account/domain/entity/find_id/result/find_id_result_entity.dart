import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'find_id_result_entity.freezed.dart';

@freezed
class FindIdResultEntity with _$FindIdResultEntity {
  factory FindIdResultEntity({
    required bool status,
    @Default('') String message,
    @Default([]) List<LoginId> loginIds,
  }) = _FindIdResultEntity;
}

extension FindIdResultEntityParser on FindIdResultEntity {
  static FindIdResultEntity fromDto(FindIdResponseDto dto) {
    return FindIdResultEntity(
      status: dto.info.status,
      message: dto.info.message ?? '',
      loginIds: dto.toLoginIds(),
    );
  }
}

extension FindIdResultEntityMock on FindIdResultEntity {
  static FindIdResultEntity success() {
    return FindIdResultEntity(
      status: true,
      loginIds: [
        loginIdCreators[LoginType.email]!.create('test@test.com'),
      ],
    );
  }

  static FindIdResultEntity error() {
    return FindIdResultEntity(
      status: false,
      message: StringRes.serverError.tr,
    );
  }
}
