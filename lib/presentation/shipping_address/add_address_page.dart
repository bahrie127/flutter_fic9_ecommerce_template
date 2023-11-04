import 'package:flutter/material.dart';

import '../../common/components/button.dart';
import '../../common/components/custom_dropdown.dart';
import '../../common/components/custom_text_field2.dart';
import '../../common/components/space_height.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  final ValueNotifier<String> selectedCountry =
      ValueNotifier<String>('Indonesia');
  final TextEditingController countryController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController provinceController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  void dispose() {
    selectedCountry.dispose();
    countryController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    cityController.dispose();
    provinceController.dispose();
    zipCodeController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Alamat'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SpaceHeight(24.0),
          CustomTextField2(
            controller: firstNameController,
            label: 'Nama Lengkap',
          ),
          const SpaceHeight(24.0),
          CustomTextField2(
            controller: addressController,
            label: 'Alamat Jalan',
            maxLines: 3,
          ),
          const SpaceHeight(24.0),
          CustomTextField2(
            controller: phoneNumberController,
            label: 'No Handphone',
            keyboardType: TextInputType.number,
          ),
          const SpaceHeight(24.0),
          CustomDropdown(
            value: 'DIY',
            items: const ['DIY', 'JATENG'],
            label: 'Provinsi',
            onChanged: (value) {},
          ),
          const SpaceHeight(24.0),
          CustomDropdown(
            value: 'Sleman',
            items: const ['Sleman', 'Bantul'],
            label: 'Provinsi',
            onChanged: (value) {},
          ),
          const SpaceHeight(24.0),
          CustomDropdown(
            value: 'Mlati',
            items: const ['Mlati', 'Turi'],
            label: 'Kecamatan',
            onChanged: (value) {},
          ),
          const SpaceHeight(24.0),
          CustomTextField2(
            controller: zipCodeController,
            label: 'Kode Pos',
            keyboardType: TextInputType.number,
          ),
          const SpaceHeight(24.0),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Button.filled(
          onPressed: () {
            Navigator.pop(context);
          },
          label: 'Tambah Alamat',
        ),
      ),
    );
  }
}
