import 'package:fic9_ecommerce_template_app/common/extensions/int_ext.dart';

class CartModel {
  final String imagePath;
  final String name;
  final int price;
  int quantity;

  CartModel({
    required this.imagePath,
    required this.name,
    required this.price,
    this.quantity = 0,
  });

  String get priceFormat => price.currencyFormatRp;
}
