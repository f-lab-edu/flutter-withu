import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:withu_app/core/utils/mixins/widget_key_utils.dart';

extension WidgetKeyUtilsExt on WidgetKeyUtils {
  Finder toFinder() {
    return find.byKey(toKey());
  }

  /// Widget으로 변경
  T toWidget<T extends Widget>(WidgetTester tester) {
    return tester.widget<T>(toFinder());
  }
}
