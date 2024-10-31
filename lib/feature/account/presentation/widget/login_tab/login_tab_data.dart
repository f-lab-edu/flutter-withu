import 'package:withu_app/core/types/user_type.dart';
import 'package:withu_app/core/utils/resource/string_res.dart';
import 'package:withu_app/shared/shared.dart';

class LoginTabData extends BaseTabData<UserType> {
  const LoginTabData({
    required super.text,
    required super.value,
  });

  static List<LoginTabData> get values => [
        LoginTabData(
          text: StringRes.findingGeekWorker.tr,
          value: UserType.employer,
        ),
        LoginTabData(
          text: StringRes.findingNewJob.tr,
          value: UserType.employee,
        ),
      ];

  /// 선택된 탭 데이터 얻기
  static LoginTabData getSelected(UserType type) {
    return values.firstWhere((data) => type == data.value);
  }
}
