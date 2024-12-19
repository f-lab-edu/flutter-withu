import 'package:withu_app/core/utils/mixins/widget_key_utils.dart';

enum FindIdPageKey with WidgetKeyUtils {
  page(key: 'findIdPage'),
  successPage(key: 'findIdSuccessPage'),
  failurePage(key: 'findIdFailurePage'),
  findIdBtn(key: 'findIdBtn');

  final String key;

  const FindIdPageKey({required this.key});

  @override
  String getKey() {
    return key;
  }
}
