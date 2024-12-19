import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';
import 'package:withu_app/feature/account/account.dart';

part 'find_id_request_entity.freezed.dart';

@freezed
class FindIdRequestEntity with _$FindIdRequestEntity {
  factory FindIdRequestEntity({
    required AccountType accountType,
    @Default('') String phone,
    @Default('') String authCode,
  }) = _FindIdRequestEntity;
}

extension FindIdRequestEntityConverter on FindIdRequestEntity {
  FindIdRequestDto toDto() {
    return FindIdRequestDto(
      phoneNumber: phone,
      authCode: authCode,
      accountType: accountType,
    );
  }
}
