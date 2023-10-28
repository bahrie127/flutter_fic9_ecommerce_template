import 'package:fic9_ecommerce_template_app/common/constants/images.dart';
import 'package:fic9_ecommerce_template_app/common/extensions/int_ext.dart';
import 'package:fic9_ecommerce_template_app/presentation/cart/widgets/cart_tile.dart';
import 'package:flutter/material.dart';

import '../../common/components/button.dart';
import '../../common/components/row_text.dart';
import '../../common/components/space_height.dart';
import '../../common/constants/colors.dart';
import '../payment/payment_page.dart';
import 'widgets/cart_model.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<CartModel> carts = [
    CartModel(
      imagePath: Images.product1,
      name: 'Tas Kekinian',
      price: 200000,
    ),
    CartModel(
      imagePath: Images.product2,
      name: 'Earphone',
      price: 199999,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          if (carts.isEmpty)
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: Column(
                  children: [
                    const Text(
                      'Oppsss..\nKeranjang Anda kosong nih!',
                      style: TextStyle(fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                    const SpaceHeight(20.0),
                    Button.filled(
                      width: 120.0,
                      height: 40.0,
                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      },
                      label: 'Cari yuk',
                    ),
                  ],
                ),
              ),
            ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SpaceHeight(16.0),
            itemCount: carts.length,
            itemBuilder: (context, index) {
              return CartItemWidget(
                data: carts[index],
              );
            },
          ),
          if (carts.isNotEmpty) const SpaceHeight(70.0),
          if (carts.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border.all(color: ColorName.border),
              ),
              child: Column(
                children: [
                  RowText(
                    label: 'Item (${carts.length})',
                    value: 1750000.currencyFormatRp,
                  ),
                  const SpaceHeight(12.0),
                  RowText(
                    label: 'Biaya Pengiriman',
                    value: 150000.currencyFormatRp,
                  ),
                  const SpaceHeight(40.0),
                  const Divider(color: ColorName.border),
                  const SpaceHeight(12.0),
                  RowText(
                    label: 'Total Harga',
                    value: 1900000.currencyFormatRp,
                    valueColor: ColorName.primary,
                    fontWeight: FontWeight.w700,
                  ),
                  const SpaceHeight(16.0),
                  Button.filled(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentPage(
                                  url: '',
                                )),
                      );
                    },
                    label: 'Bayar Sekarang',
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
