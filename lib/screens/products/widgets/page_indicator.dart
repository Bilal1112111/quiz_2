import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _pageController,
      count: 3,
      effect: const WormEffect(
        activeDotColor: ColorManager.customOrangeColor,
        dotColor: ColorManager.custom6GreyColor,
        dotWidth: AppSize.s22,
        dotHeight: AppSize.s4,
        type: WormType.underground,
      ),
    );
  }
}
