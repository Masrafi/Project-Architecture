import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String get removeZero {
    RegExp regex = RegExp(r'([.]*0)(?!.*\d)');
    return toString().replaceAll(regex, '');
  }

  String get currencyFormat {
    final formatCurrency = NumberFormat('#,##0.#', 'en_US');
    return formatCurrency.format(this);
  }
}

extension IntExtension on int {
  String get currencyFormat {
    final formatCurrency = NumberFormat('#,##0', 'en_US');
    return formatCurrency.format(this);
  }
}