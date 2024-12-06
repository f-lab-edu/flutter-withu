import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/network/dto/base/base_response_dto.dart';
import 'package:withu_app/feature/account/account.dart';


part 'find_id_response_dto.freezed.dart';

part 'find_id_response_dto.g.dart';

typedef FindIdResponseDto = BaseResponseDto<FindIdResultDto>;

@freezed
class FindIdResultDto with _$FindIdResultDto {
  factory FindIdResultDto({
    required bool status,
    @Default([]) List<UserAccountItemDto> accounts,
    String? message,
  }) = _FindIdResultDto;

  factory FindIdResultDto.fromJson(Map<String, dynamic> json) =>
      _$FindIdResultDtoFromJson(json);
}

extension FindIdResponseDtoDtoMock on FindIdResponseDto {
  static FindIdResponseDto success() {
    return BaseResponseDtoMock.mock(
      FindIdResultDto(
        status: true,
        accounts: [
          UserAccountItemDtoMock.mock(),
        ],
      ),
    );
  }

  static FindIdResponseDto failure() {
    return BaseResponseDtoMock.mock(
      FindIdResultDto(
        status: false,
        message: '가입하신 계정이 없습니다.',
      ),
    );
  }
}

extension FindIdResponseDtoParser on FindIdResponseDto {
  /// LoginId 리스트로 변경
  List<LoginId> toLoginIds() {
    return info.accounts
        .map((account) => account.toLoginId())
        .whereType<LoginId>()
        .toList();
  }
}
