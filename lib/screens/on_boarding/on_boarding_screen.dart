import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/assets_manager.dart';
import 'package:ptc2d/core/utils/color_manager.dart';
import 'package:ptc2d/screens/initial_screen.dart';
import 'package:ptc2d/screens/on_boarding/widgets/page_view_info.dart';
import 'package:ptc2d/screens/on_boarding/widgets/reusable_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/utils/string_manager.dart';
import '../../core/utils/values_manager.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p40, vertical: AppPadding.p30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1.07,
                  child: PageView.builder(
                    physics: const PageScrollPhysics(),
                    itemCount: StringManager.onBoardingMainText.length,
                    controller: _pageController,
                    onPageChanged: (int page) => {
                      setState(() {
                        _currentPage = page;
                      })
                    },
                    itemBuilder: (context, index) {
                      return PageViewInfo(index: index);
                    },
                  ),
                ),
                const SizedBox(
                  height: AppSize.s40,
                ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: StringManager.onBoardingMainText.length,
                  effect: const WormEffect(
                    activeDotColor: ColorManager.custom2WhiteColor,
                    dotColor: ColorManager.custom3WhiteColor,
                    dotWidth: AppSize.s40,
                    dotHeight: AppSize.s6,
                    type: WormType.underground,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Center(
                  child: Image.asset(
                    AssetsManager.picPlaceHolder,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Center(
                  child: ReusableButton(
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ),
                          )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
