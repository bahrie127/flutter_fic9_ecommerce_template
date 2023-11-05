import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'space_height.dart';

class MenuTile extends StatelessWidget {
  final String title;
  final String value;
  final String iconPath;
  final VoidCallback onTap;

  const MenuTile({
    super.key,
    required this.title,
    required this.value,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(iconPath, width: 24.0),
            const SpaceWidth(16.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            Flexible(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    flex: 6,
                    child: Text(
                      value,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorName.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  const SpaceWidth(16.0),
                  const Icon(
                    Icons.chevron_right,
                    color: ColorName.grey,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
