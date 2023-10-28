import 'package:flutter/material.dart';

import '../../../common/components/space_height.dart';

class ProductDescriptionWidget extends StatelessWidget {
  const ProductDescriptionWidget({
    Key? key,
    required this.padding,
    required this.description,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: padding,
          child: const Text(
            "Deskripsi Produk",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SpaceHeight(11.0),
        Padding(
          padding: padding,
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
