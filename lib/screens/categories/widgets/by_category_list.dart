import 'package:flutter/material.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class ByCategoryList extends StatelessWidget {
  const ByCategoryList({
    super.key,
    required this.label,
    required this.hintLabel,
    required this.color,
    required this.price,
  });

  final String label;
  final String hintLabel;
  final Color color;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: AppPadding.p16, bottom: AppPadding.p30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 140,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.s18),
                  color: color,
                ),
                child: Center(
                  child: Image.asset(
                    AssetsManager.picPlaceHolder,
                    width: AppSize.s60,
                    height: AppSize.s60,
                    color: ColorManager.blackColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: AppSize.s16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: StyleManager.w700TextStyle(size: AppSize.s18),
              ),
              const SizedBox(
                height: AppSize.s10,
              ),
              Text(
                hintLabel,
                style: StyleManager.w400TextStyle(
                  size: AppSize.s16,
                  color: ColorManager.custom3GreyColor,
                ),
              ),
              const SizedBox(
                height: AppSize.s35,
              ),
              Text(
                StringManager.startingFromText,
                style: StyleManager.w400TextStyle(
                  color: ColorManager.custom3GreyColor,
                ),
              ),
              const SizedBox(
                height: AppSize.s16,
              ),
              Text(
                price,
                style: StyleManager.w700TextStyle(
                  color: ColorManager.primaryColor,
                  size: AppSize.s16,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
