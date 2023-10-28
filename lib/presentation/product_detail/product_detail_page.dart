import 'package:fic9_ecommerce_template_app/common/constants/images.dart';
import 'package:fic9_ecommerce_template_app/presentation/product_detail/widgets/product_description_widget.dart';
import 'package:fic9_ecommerce_template_app/presentation/product_detail/widgets/product_info_widget.dart';
import 'package:flutter/material.dart';

import '../../common/components/button.dart';
import '../../common/components/space_height.dart';
import '../../common/constants/colors.dart';
import '../cart/cart_page.dart';
import '../home/product_model.dart';
import '../home/widgets/image_slider.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  EdgeInsets paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20.0);
  final List<String> images = [
    Images.product3,
    Images.product3,
    Images.product3,
    Images.product3,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),
      body: ListView(
        children: [
          ImageSlider(items: images),
          const SpaceHeight(16.0),
          ProductInfoWidget(
            padding: paddingHorizontal,
            product: ProductModel(
              images: images,
              name: 'Nike Air Zoom 36',
              price: 700000,
            ),
            onWishlistTap: (isWishlist) {
              // TODO: on wishlist tap
            },
          ),
          const SpaceHeight(11.0),
          ProductDescriptionWidget(
            padding: paddingHorizontal,
            description:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet arcu id tincidunt tellus arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper. Nulla bibendum purus tempor semper purus. Ut curabitur platea sed blandit. Amet non at proin justo nulla et. A, blandit morbi suspendisse vel malesuada purus massa mi. Faucibus neque a mi hendrerit.',
          ),
          const SpaceHeight(11.0),
          Padding(
            padding: paddingHorizontal,
            child: Divider(
              color: ColorName.grey.withOpacity(0.18),
            ),
          ),
          const SpaceHeight(11.0),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.withOpacity(0.18)),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Button.filled(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CartPage()),
                  );
                },
                label: "Add to Cart",
              ),
            ),
            const SpaceWidth(15.0),
            Flexible(
              child: Button.outlined(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const PaymentPage()),
                  // );
                },
                label: "Buy Now",
                color: ColorName.light,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
