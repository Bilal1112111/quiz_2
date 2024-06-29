import 'package:flutter/material.dart';
import 'package:ptc2d/screens/products/product_details1_screen.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({
    super.key,
    required this.product,
    required this.productHint,
    required this.price,
  });
  final String product;
  final String productHint;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails1Screen(),
          ),
        );
      },
      child: Container(
        width: 128,
        padding: const EdgeInsets.only(
            top: AppPadding.p20, left: AppPadding.p14, right: AppPadding.p14),
        margin: const EdgeInsets.symmetric(horizontal: AppMargin.m12),
        decoration: BoxDecoration(
          color: ColorManager.custom3WhiteColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(AppSize.s18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                AssetsManager.picPlaceHolder,
                color: ColorManager.custom3GreyColor,
                width: AppSize.s60,
                height: AppSize.s60,
              ),
            ),
            const SizedBox(
              height: AppSize.s18,
            ),
            const Divider(
              thickness: 0.5,
              endIndent: AppSize.s14,
              indent: AppSize.s14,
              color: ColorManager.custom5WhiteColor,
            ),
            Text(
              textAlign: TextAlign.start,
              product,
              style: StyleManager.w600TextStyle(),
            ),
            Text(
              textAlign: TextAlign.start,
              productHint,
              style: StyleManager.w400TextStyle(
                size: AppSize.s12,
                color: ColorManager.custom3GreyColor,
              ),
            ),
            const SizedBox(
              height: AppSize.s10,
            ),
            Stack(
              children: [
                Container(
                  height: 24,
                  width: 108,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.s12),
                    color: ColorManager.whiteColor.withOpacity(0.9),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: AppSize.s12,
                      ),
                      Text(
                        StringManager.unit,
                        style: StyleManager.w400TextStyle(
                          color: ColorManager.custom2GreyColor,
                          size: AppSize.s12,
                        ),
                      ),
                      Text(
                        price,
                        style: StyleManager.w600TextStyle(),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  left: AppSize.s75,
                  child: CircleAvatar(
                    backgroundColor: ColorManager.custom1PrimaryColor,
                    radius: 12,
                    child: Icon(
                      Icons.add,
                      color: ColorManager.whiteColor,
                      size: AppSize.s14,
                    ),
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
