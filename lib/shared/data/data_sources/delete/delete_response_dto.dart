import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_response_dto.freezed.dart';

part 'delete_response_dto.g.dart';

part 'delete_response_dto.mock.dart';

/// 삭제 응답 DTO
@freezed
class DeleteResponseDto with _$DeleteResponseDto {
  const factory DeleteResponseDto({
    required String id,
    required bool deleted,
    required String? message,
  }) = _DeleteResponseDto;

  factory DeleteResponseDto.fromJson(Map<String, Object?> json) =>
      _$DeleteResponseDtoFromJson(json);

  /// Mock 삭제 성공
  factory DeleteResponseDto.mockSuccess({required String id}) =>
      DeleteResponseDtoMock.mockSuccess(id: id);

  /// Mock 삭제 실패
  factory DeleteResponseDto.mockFail({required String id}) =>
      DeleteResponseDtoMock.mockFail(id: id);
}
