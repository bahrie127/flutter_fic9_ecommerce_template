import 'package:fic9_ecommerce_template_app/presentation/order/widgets/manifest_delivery_page.dart';
import 'package:flutter/material.dart';

import '../../../common/components/button.dart';
import '../../../common/components/row_text.dart';
import '../../../common/components/space_height.dart';
import '../../../common/constants/colors.dart';
import '../models/transaction_model.dart';
import '../order_detail_page.dart';

class OrderCard extends StatelessWidget {
  final TransactionModel data;
  const OrderCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OrderDetailPage()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(color: ColorName.border),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NO RESI: ${data.noResi}',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Button.filled(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ManifestDeliveryPage()),
                    );
                  },
                  label: 'Lacak',
                  height: 20.0,
                  width: 94.0,
                  fontSize: 11.0,
                ),
              ],
            ),
            const SpaceHeight(24.0),
            RowText(label: 'Status', value: data.status),
            const SpaceHeight(12.0),
            RowText(label: 'Item', value: data.item),
            const SpaceHeight(12.0),
            RowText(label: 'Harga', value: data.priceFormat),
          ],
        ),
      ),
    );
  }
}
