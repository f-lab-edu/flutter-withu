import 'package:withu_app/core/utils/mixins/widget_key_utils.dart';

enum PhoneAuthWidgetKey with WidgetKeyUtils {
  phoneInput(key: "phoneInput"),
  sendAuthBtn(key: "sendAuthBtn"),
  authCodeInput(key: "authCodeInput"),
  authCodeInputError(key: "authCodeInput_error");

  final String key;

  const PhoneAuthWidgetKey({required this.key});

  @override
  String getKey() {
    return key;
  }
}
