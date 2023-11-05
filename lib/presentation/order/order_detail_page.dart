import 'package:fic9_ecommerce_template_app/common/constants/images.dart';
import 'package:fic9_ecommerce_template_app/common/extensions/date_time_ext.dart';
import 'package:fic9_ecommerce_template_app/common/extensions/int_ext.dart';
import 'package:flutter/material.dart';

import '../../common/components/button.dart';
import '../../common/components/row_text.dart';
import '../../common/components/space_height.dart';
import '../../common/constants/colors.dart';
import 'models/order_product_model.dart';
import 'widgets/order_product_tile.dart';
import 'widgets/order_status.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({super.key});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  final List<OrderProductModel> products = [
    OrderProductModel(
      imagePath: Images.product1,
      name: 'Tas Kekinian',
      price: 200000,
    ),
    OrderProductModel(
      imagePath: Images.product2,
      name: 'Earphone',
      price: 199999,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Pesanan'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const OrderStatus(
            status: ['Pending', 'Dikemas', 'Dikirim'],
          ),
          const SpaceHeight(24.0),
          const Text(
            'Produk',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SpaceHeight(14.0),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            itemBuilder: (context, index) => OrderProductTile(
              data: products[index],
            ),
          ),
          const SpaceHeight(24.0),
          const Text(
            'Detail Pengiriman',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SpaceHeight(14.0),
          Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              border: Border.all(color: ColorName.border),
            ),
            child: Column(
              children: [
                RowText(
                  label: 'Waktu Pengiriman',
                  value: DateTime.now().toFormattedDateWithDay(),
                ),
                const SpaceHeight(12.0),
                const RowText(
                  label: 'Ekspedisi Pengiriman',
                  value: 'JNE Regular',
                ),
                const SpaceHeight(12.0),
                const RowText(
                  label: 'No. Resi',
                  value: 'QQNSU346JK',
                ),
                const SpaceHeight(12.0),
                const RowText(
                  label: 'Alamat',
                  value: 'Jalan suka cita no 12',
                ),
              ],
            ),
          ),
          const SpaceHeight(24.0),
          const Text(
            'Detail Pembayaran',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SpaceHeight(14.0),
          Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              border: Border.all(color: ColorName.border),
            ),
            child: Column(
              children: [
                RowText(
                  label: 'Item (2)',
                  value: 1900000.currencyFormatRp,
                ),
                const SpaceHeight(12.0),
                RowText(
                  label: 'Ongkir',
                  value: 120000.currencyFormatRp,
                ),
                const SpaceHeight(12.0),
                RowText(
                  label: 'Total ',
                  value: 2020000.currencyFormatRp,
                  valueColor: ColorName.primary,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
