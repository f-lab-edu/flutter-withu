
import 'package:intl/intl.dart';

extension DateTimeEx on DateTime {

  /// 포맷팅한 날짜 얻기
  String format(String format) {
    final DateFormat formatter = DateFormat(format);
    return formatter.format(this);
  }
}
