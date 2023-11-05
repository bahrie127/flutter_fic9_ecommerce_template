

import 'package:fic9_ecommerce_template_app/common/extensions/int_ext.dart';

class TransactionModel {
  final String noResi;
  final String status;
  final int quantity;
  final int price;

  TransactionModel({
    required this.noResi,
    required this.status,
    required this.quantity,
    required this.price,
  });

  String get item => '$quantity item yang dibeli';
  String get priceFormat => price.currencyFormatRp;
}
