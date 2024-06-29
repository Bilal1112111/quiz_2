import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class DealsSlider extends StatelessWidget {
  const DealsSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 269,
      height: 123,
      margin: const EdgeInsets.symmetric(horizontal: AppMargin.m12),
      decoration: BoxDecoration(
        color: ColorManager.customOrangeColor,
        borderRadius: BorderRadius.circular(AppSize.s18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            AssetsManager.picPlaceHolder,
            width: AppSize.s60,
            height: AppSize.s60,
            color: ColorManager.whiteColor,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringManager.get,
                style: StyleManager.w300TextStyle(
                  size: AppSize.s20,
                  color: ColorManager.whiteColor,
                ),
              ),
              Text(
                StringManager.percentage,
                style: StyleManager.w800TextStyle(
                  size: AppSize.s26,
                  color: ColorManager.whiteColor,
                ),
              ),
              Text(
                StringManager.offerType,
                style: StyleManager.w300TextStyle(
                  size: AppSize.s14,
                  color: ColorManager.whiteColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
