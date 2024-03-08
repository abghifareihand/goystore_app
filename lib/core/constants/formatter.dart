import 'package:intl/intl.dart';

String priceFormat(dynamic price) {
  final currencyFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'IDR ',
    decimalDigits: 0,
  );
  return currencyFormat.format(price);
}
