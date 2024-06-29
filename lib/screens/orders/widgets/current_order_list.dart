import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/color_manager.dart';
import 'package:ptc2d/core/utils/string_manager.dart';
import 'package:ptc2d/core/utils/style_manager.dart';
import 'package:ptc2d/core/utils/values_manager.dart';

import '../../../core/utils/assets_manager.dart';
import '../../products/widgets/reusable_check_out_button.dart';

class CurrentOrdersList extends StatelessWidget {
  const CurrentOrdersList({
    super.key,
    required this.itemLabel,
    required this.price,
    required this.idText,
    required this.riderName,
    required this.itemLabelOrder,
  });
  final String itemLabel;
  final String price;
  final String idText;
  final String riderName;
  final String itemLabelOrder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              AssetsManager.picPlaceHolder,
              color: ColorManager.custom4GreyColor,
              width: AppSize.s40,
              height: AppSize.s40,
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
              ],
            ),
            const Spacer(),
            Text(
              idText,
              style: StyleManager.w400TextStyle(
                  color: ColorManager.custom2BlackColor),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  AssetsManager.picPlaceHolder,
                  width: AppSize.s30,
                  height: AppSize.s30,
                  color: ColorManager.custom4GreyColor,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.s20),
                    border: Border.all(
                        color: ColorManager.custom2WhiteColor, width: 3),
                  ),
                  child: const CircleAvatar(
                    backgroundColor: ColorManager.custom10GreyColor,
                    radius: 18,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: StringManager.riderText,
                    style: StyleManager.w400TextStyle(
                      size: AppSize.s12,
                      color: ColorManager.custom4GreyColor,
                    ),
                    children: [
                      TextSpan(
                        text: riderName,
                        style: StyleManager.w500TextStyle(
                          color: ColorManager.custom1GreyColor,
                          size: AppSize.s12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: itemLabelOrder,
                    style: StyleManager.w400TextStyle(
                      size: AppSize.s20,
                      color: ColorManager.blackColor,
                    ),
                    children: [
                      TextSpan(
                        text: StringManager.orderComplementText,
                        style: StyleManager.w700TextStyle(
                          size: AppSize.s20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSize.s14,
                ),
                ReusableCheckOutButton(
                  width: MediaQuery.of(context).size.width * 0.3,
                  overlayColor: ColorManager.whiteColor,
                  backgroundColor: ColorManager.primaryColor,
                  sideColor: Colors.transparent,
                  labelColor: ColorManager.whiteColor,
                  label: StringManager.trackOrderText,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
