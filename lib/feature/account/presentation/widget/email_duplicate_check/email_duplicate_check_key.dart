import 'package:withu_app/core/utils/mixins/widget_key_utils.dart';

enum EmailDuplicateCheckKey with WidgetKeyUtils {
  emailInput(key: 'emailInput'),
  emailInputError(key: 'emailInput_error');

  final String key;

  const EmailDuplicateCheckKey({required this.key});

  @override
  String getKey() {
    return key;
  }
}
