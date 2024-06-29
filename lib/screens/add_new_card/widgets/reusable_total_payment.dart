import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class ReusableTotalPayment extends StatelessWidget {
  const ReusableTotalPayment({
    super.key,
    required this.label,
    required this.price,
  });
  final String label;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p35, vertical: AppPadding.p10),
      child: Row(
        children: [
          Text(
            label,
            style: StyleManager.w400TextStyle(
              color: ColorManager.custom3GreyColor,
            ),
          ),
          const Spacer(),
          Text(
            price,
            style: StyleManager.w500TextStyle(),
          ),
        ],
      ),
    );
  }
}
