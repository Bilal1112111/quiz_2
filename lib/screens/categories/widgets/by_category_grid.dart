import 'package:flutter/material.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class ByCategoriesGridView extends StatelessWidget {
  const ByCategoriesGridView({
    super.key,
    required this.product,
    required this.productHint,
  });
  final String product;
  final String productHint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154,
      padding: const EdgeInsets.only(
        top: AppPadding.p20,
      ),
      decoration: BoxDecoration(
        color: ColorManager.custom3WhiteColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppSize.s18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AssetsManager.picPlaceHolder,
              color: ColorManager.custom3GreyColor,
              width: AppSize.s70,
              height: AppSize.s70,
            ),
          ),
          const SizedBox(
            height: AppSize.s14,
          ),
          const Divider(
            thickness: 0.5,
            endIndent: AppSize.s14,
            indent: AppSize.s14,
            color: ColorManager.custom5WhiteColor,
          ),
          Text(
            product,
            style: StyleManager.w600TextStyle(
              size: AppSize.s13,
            ),
          ),
          Text(
            productHint,
            style: StyleManager.w400TextStyle(
              size: AppSize.s12,
              color: ColorManager.custom3GreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
