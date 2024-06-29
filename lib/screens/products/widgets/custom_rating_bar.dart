import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar(
          filledIcon: Icons.star_rounded,
          filledColor: ColorManager.customOrangeColor,
          emptyIcon: Icons.star_rounded,
          emptyColor: ColorManager.custom1BlackColor,
          onRatingChanged: (p0) {},
          initialRating: 3,
          maxRating: 5,
          size: 22,
        ),
        const SizedBox(
          width: AppSize.s10,
        ),
        Text(
          '110 ${StringManager.reviewsText}',
          style: StyleManager.w400TextStyle(
            color: ColorManager.custom7GreyColor,
          ),
        ),
      ],
    );
  }
}
