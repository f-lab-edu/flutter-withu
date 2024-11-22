import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:withu_app/core/core.dart';

part 'sign_up_response_dto.freezed.dart';

part 'sign_up_response_dto.g.dart';

part 'sign_up_response_dto.mock.dart';

typedef SignUpResponseDto = BaseResponseDto<SignUpResponseData>;

@freezed
class SignUpResponseData with _$SignUpResponseData {
  factory SignUpResponseData({
    required bool status,
    required String message,
    required int userId,
    required String loginId,
    required String name,
    required String sessionId,
    DateTime? birthDate,
    LoginType? loginType,
  }) = _SignUpResponseData;

  factory SignUpResponseData.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseDataFromJson(json);
}
