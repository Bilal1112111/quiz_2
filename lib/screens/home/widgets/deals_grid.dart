import 'package:flutter/material.dart';
import 'package:ptc2d/screens/products/product_details2_screen.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class DealsGrid extends StatelessWidget {
  const DealsGrid({
    super.key,
    required this.price,
    required this.productDeals,
  });
  final String price;
  final String productDeals;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails2Screen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: AppPadding.p20,
          left: AppPadding.p14,
          right: AppPadding.p14,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s18),
          color: ColorManager.custom3WhiteColor.withOpacity(0.1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                AssetsManager.picPlaceHolder,
                color: ColorManager.custom3GreyColor,
                width: AppSize.s70,
                height: AppSize.s70,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorManager.custom1PrimaryColor,
                      radius: AppSize.s12,
                      child: Icon(
                        Icons.add,
                        color: ColorManager.whiteColor,
                        size: AppSize.s14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.s12,
                ),
                Text(
                  price,
                  style: StyleManager.w600TextStyle(),
                ),
                Text(
                  productDeals,
                  style: StyleManager.w400TextStyle(
                    color: ColorManager.custom3GreyColor,
                    size: AppSize.s12,
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
