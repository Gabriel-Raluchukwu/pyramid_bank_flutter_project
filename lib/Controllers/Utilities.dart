import 'package:intl/intl.dart';

String currencyFormat(double value) {
  final currency = NumberFormat("#,##0.00", "en-us");
  return currency.format(value);
}
// String currencyFormat(num value) {
//   final currency = NumberFormat("#,##0.00","en-us");
//   return currency.format(currency);

// }
