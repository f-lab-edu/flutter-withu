import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'user_account_item_dto.freezed.dart';

part 'user_account_item_dto.g.dart';

@freezed
class UserAccountItemDto with _$UserAccountItemDto {
  factory UserAccountItemDto({
    required LoginType loginType,
    String? loginId,
  }) = _UserAccountItemDto;

  factory UserAccountItemDto.fromJson(Map<String, dynamic> json) =>
      _$UserAccountItemDtoFromJson(json);
}

extension UserAccountItemDtoMock on UserAccountItemDto {
  static UserAccountItemDto mock() {
    return UserAccountItemDto(
      loginType: LoginType.email,
      loginId: 'test@test.co.kr',
    );
  }
}

extension UserAccountItemDtoParser on UserAccountItemDto {
  LoginId? toLoginId() {
    final id = loginId;

    if (id == null) {
      return null;
    }

    return loginIdCreators[loginType]?.create(id);
  }
}
