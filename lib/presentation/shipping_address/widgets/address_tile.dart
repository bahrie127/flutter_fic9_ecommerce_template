import 'package:flutter/material.dart';

import '../../../common/components/button.dart';
import '../../../common/components/space_height.dart';
import '../../../common/constants/colors.dart';
import '../models/address_model.dart';

class AddressTile extends StatelessWidget {
  final bool isSelected;
  final AddressModel data;
  final VoidCallback onTap;
  final VoidCallback onEditTap;
  final VoidCallback onDeleteTap;

  const AddressTile({
    super.key,
    this.isSelected = false,
    required this.data,
    required this.onTap,
    required this.onEditTap,
    required this.onDeleteTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(
              color: isSelected ? ColorName.primary : ColorName.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SpaceHeight(16.0),
            Text(
              data.address,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
            const SpaceHeight(16.0),
            Text(
              data.phoneNumber,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
            const SpaceHeight(16.0),
            Row(
              children: [
                Button.filled(
                  onPressed: onEditTap,
                  label: 'Edit',
                  width: 80.0,
                ),
                const SpaceWidth(16.0),
                IconButton(
                  onPressed: onDeleteTap,
                  icon: const ImageIcon(
                    AssetImage('assets/icons/Trash.png'),
                    color: ColorName.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
