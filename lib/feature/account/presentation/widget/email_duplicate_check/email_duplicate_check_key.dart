import 'package:withu_app/core/utils/mixins/widget_key_utils.dart';

enum EmailDuplicateCheckKey with WidgetKeyUtils {
  emailInput;

  @override
  String getKey() {
    return name;
  }
}
