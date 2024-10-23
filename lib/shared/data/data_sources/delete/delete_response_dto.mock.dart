part of 'delete_response_dto.dart';

extension DeleteResponseDtoMock on DeleteResponseDto {
  /// Mock 삭제 성공
  static DeleteResponseDto mockSuccess({required String id}) {
    return DeleteResponseDto(
      id: id,
      deleted: true,
      message: null,
    );
  }

  /// Mock 삭제 실패
  static DeleteResponseDto mockFail({required String id}) {
    return DeleteResponseDto(
      id: id,
      deleted: false,
      message: '삭제에 실패하였습니다.',
    );
  }
}
