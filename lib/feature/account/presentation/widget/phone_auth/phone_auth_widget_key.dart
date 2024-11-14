import 'package:withu_app/core/utils/mixins/widget_key_utils.dart';

enum PhoneAuthWidgetKey with WidgetKeyUtils {
  phoneInput,
  sendAuthBtn,
  authCodeInput;

  @override
  String getKey() {
    return name;
  }
}
