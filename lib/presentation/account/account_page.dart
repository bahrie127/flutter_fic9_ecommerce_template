import 'package:fic9_ecommerce_template_app/common/constants/images.dart';
import 'package:fic9_ecommerce_template_app/presentation/shipping_address/shipping_address_page.dart';
import 'package:flutter/material.dart';

import '../../common/constants/colors.dart';
import '../order/order_page.dart';
import 'profile_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset(
              Images.iconUser,
              width: 24.0,
            ),
            title: const Text(
              'Profil',
              style: TextStyle(
                color: ColorName.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          ListTile(
            leading: Image.asset(
              Images.iconBag,
              width: 24.0,
            ),
            title: const Text(
              'Pesanan',
              style: TextStyle(
                color: ColorName.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrderPage()),
              );
            },
          ),
          ListTile(
            leading: Image.asset(
              Images.iconLocation,
              width: 24.0,
            ),
            title: const Text(
              'Alamat',
              style: TextStyle(
                color: ColorName.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ShippingAddressPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
