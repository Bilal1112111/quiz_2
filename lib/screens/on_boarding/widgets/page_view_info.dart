import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class PageViewInfo extends StatelessWidget {
  const PageViewInfo({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringManager.onBoardingMainText[index],
          style: StyleManager.w700TextStyle(
            color: ColorManager.custom1WhiteColor,
            size: AppSize.s30,
          ),
        ),
        const SizedBox(
          height: AppSize.s30,
        ),
        Text(
          StringManager.onBoardingSecondaryText[index],
          style: StyleManager.w500TextStyle(
            size: AppSize.s18,
            color: ColorManager.custom3WhiteColor,
          ),
        ),
      ],
    );
  }
}
