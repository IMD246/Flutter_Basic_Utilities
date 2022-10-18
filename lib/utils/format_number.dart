import 'package:intl/intl.dart';

class FormatNumber {
  final formatCurrency = NumberFormat.currency(
    locale: "vi_VN",
    symbol: "",
  );
  String formatCurrencyHandler({required double value}) {
    return formatCurrency.format(value);
  }
}
