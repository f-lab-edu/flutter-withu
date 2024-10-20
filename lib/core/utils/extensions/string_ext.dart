import 'package:intl/intl.dart';

extension StringExt on String {
  /// 돈 포맷으로 변경
  String moneyFormat({String locale = 'ko_KR', String symbol = ''}) {
    if (isEmpty || double.tryParse(this) == null) {
      return this;
    }

    final formatter = NumberFormat.currency(
      locale: locale,
      symbol: symbol,
      decimalDigits: contains('.') ? 2 : 0,
    );

    return formatter.format(double.parse(this));
  }
}
