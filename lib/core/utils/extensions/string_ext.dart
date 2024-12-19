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

  /// 날짜 형식으로 변경
  DateTime toDate() {
    if (length != 8) {
      throw FormatException(
        'Invalid date string format. Expected 8 digits (yyyyMMdd) : $this',
      );
    }

    try {
      return DateTime(
        int.parse(substring(0, 4)),
        int.parse(substring(4, 6)),
        int.parse(substring(6, 8)),
      );
    } catch (e) {
      throw FormatException('Failed to parse date string: $this');
    }
  }
}
