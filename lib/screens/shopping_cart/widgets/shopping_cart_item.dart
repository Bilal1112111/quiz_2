import 'package:flutter/material.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';
import 'bordered_icon.dart';

class ShoppingCartItem extends StatelessWidget {
  const ShoppingCartItem({
    super.key,
    required this.label,
    required this.price,
  });
  final String label;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsManager.picPlaceHolder,
          width: AppSize.s30,
          height: AppSize.s30,
          color: ColorManager.custom5GreyColor,
        ),
        const SizedBox(
          width: AppSize.s24,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: StyleManager.w500TextStyle(),
            ),
            Text(
              price,
              style: StyleManager.w400TextStyle(),
            ),
          ],
        ),
        const Spacer(),
        const BorderedIcon(
          icon: Icons.remove,
        ),
        const SizedBox(
          width: AppSize.s10,
        ),
        Text(
          '2',
          style: StyleManager.w500TextStyle(),
        ),
        const SizedBox(
          width: AppSize.s10,
        ),
        const BorderedIcon(icon: Icons.add),
      ],
    );
  }
}
