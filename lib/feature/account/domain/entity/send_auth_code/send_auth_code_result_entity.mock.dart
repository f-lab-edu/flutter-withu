part of 'send_auth_code_result_entity.dart';

extension SendAuthCodeResultEntityMock on SendAuthCodeResultEntity {
  static SendAuthCodeResultEntity serverError() {
    return SendAuthCodeResultEntity(
        status: false, message: StringRes.serverError.tr);
  }
}
