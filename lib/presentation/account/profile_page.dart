import 'package:fic9_ecommerce_template_app/common/constants/images.dart';
import 'package:flutter/material.dart';

import '../../common/components/menu_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 32.0),
            leading: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              child: Image.network(
                'https://www.greenscene.co.id/wp-content/uploads/2022/03/Luffy-9.jpg',
                width: 60.0,
                height: 60.0,
                fit: BoxFit.cover,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const EditNamePage()),
                // );
              },
              icon: const Icon(Icons.edit),
            ),
            title: const Text('Bahri'),
            subtitle: const Text('@codewithbahri'),
          ),
          // MenuTile(
          //   title: 'Kelamin',
          //   value: 'Pria',
          //   iconPath: Assets.icons.gender.path,
          //   onTap: () {
          //     // Navigator.push(
          //     //   context,
          //     //   MaterialPageRoute(builder: (context) => const EditGenderPage()),
          //     // );
          //   },
          // ),
          // MenuTile(
          //   title: 'Tanggal Lahir',
          //   value: '12-12-2000',
          //   iconPath: Assets.icons.date.path,
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //           builder: (context) => const EditBirthdatePage()),
          //     );
          //   },
          // ),
          MenuTile(
            title: 'Email',
            value: 'bahri@jagoflutter.com',
            iconPath: Images.iconMessage,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const EditEmailPage()),
              // );
            },
          ),
          MenuTile(
            title: 'No Handphone',
            value: '(62) 856-9876-4321',
            iconPath: Images.iconPhone,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const EditPhoneNumberPage()),
              // );
            },
          ),
          MenuTile(
            title: 'Ubah Password',
            value: '•••••••••••••••••',
            iconPath: Images.iconPassword,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const EditPasswordPage()),
              // );
            },
          ),
        ],
      ),
    );
  }
}