import 'package:intl/intl.dart';

String priceFormat(dynamic price) {
  final currencyFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp',
    decimalDigits: 0,
  );
  return currencyFormat.format(price);
}

String dateFormat(String dateString) {
  // Ubah string ke dalam format DateTime
  DateTime dateTime = DateFormat("dd-MM-yyyy HH:mm:ss").parse(dateString);

  // 10 March 2024
  // String formattedDate = DateFormat("dd MMMM yyyy").format(dateTime);

  // 10 Mar 2024
  String formattedDate = DateFormat("dd MMM yyyy").format(dateTime);

  return formattedDate;
}
