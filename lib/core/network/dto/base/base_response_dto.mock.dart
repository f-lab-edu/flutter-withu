part of 'base_response_dto.dart';

extension BaseResponseDtoMock<T> on BaseResponseDto<T> {
  static BaseResponseDto<S> mock<S>(S data) {
    return BaseResponseDto<S>(
      returnCode: "SUCCESS",
      returnMessage: "",
      info: data,
    );
  }
}
