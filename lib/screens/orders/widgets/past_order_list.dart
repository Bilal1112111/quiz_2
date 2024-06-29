import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/color_manager.dart';
import 'package:ptc2d/core/utils/string_manager.dart';
import 'package:ptc2d/core/utils/style_manager.dart';
import 'package:ptc2d/core/utils/values_manager.dart';

import '../../../core/utils/assets_manager.dart';

class PastOrdersList extends StatelessWidget {
  const PastOrdersList({
    super.key,
    required this.itemLabel,
    required this.price,
    required this.idText,
  });
  final String itemLabel;
  final String price;
  final String idText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AssetsManager.picPlaceHolder,
              color: ColorManager.custom4GreyColor,
              width: AppSize.s50,
              height: AppSize.s50,
            ),
            const SizedBox(
              width: AppSize.s24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemLabel,
                  style: StyleManager.w400TextStyle(
                    color: ColorManager.custom4GreyColor,
                  ),
                ),
                const SizedBox(
                  height: AppSize.s4,
                ),
                Text(
                  price,
                  style: StyleManager.w600TextStyle(
                    color: ColorManager.blackColor,
                  ),
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
                Text(
                  '02/10/2021',
                  style: StyleManager.w400TextStyle(
                    color: ColorManager.custom2GreyColor,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  idText,
                  style: StyleManager.w400TextStyle(
                    color: ColorManager.custom2BlackColor,
                  ),
                ),
                const SizedBox(
                  height: AppSize.s30,
                ),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: AppPadding.p4, horizontal: AppPadding.p12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.s8),
                      color: ColorManager.custom5WhiteColor),
                  child: Center(
                    child: Text(
                      StringManager.successText,
                      style: StyleManager.w500TextStyle(
                        size: AppSize.s12,
                        color: ColorManager.primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
