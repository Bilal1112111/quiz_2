import 'package:flutter/material.dart';
import 'package:ptc2d/screens/products/widgets/before_and_after_price.dart';
import 'package:ptc2d/screens/products/widgets/custom_rating_bar.dart';
import 'package:ptc2d/screens/products/widgets/page_indicator.dart';
import 'package:ptc2d/screens/products/widgets/reusable_check_out_button.dart';
import 'package:ptc2d/screens/products/widgets/reusable_menu_template.dart';
import 'package:ptc2d/screens/widgets/custom_app_bar.dart';

import '../../core/utils/assets_manager.dart';
import '../../core/utils/color_manager.dart';
import '../../core/utils/string_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';

class ProductDetails1Screen extends StatefulWidget {
  ProductDetails1Screen({super.key});

  @override
  State<ProductDetails1Screen> createState() => _ProductDetails1ScreenState();
}

class _ProductDetails1ScreenState extends State<ProductDetails1Screen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: AppBarCustom(
          title: StringManager.product1Details,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2.4,
              child: PageView.builder(
                itemCount: 3,
                physics: const PageScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  return Center(
                    child: Image.asset(
                      AssetsManager.picPlaceHolder,
                      width: AppSize.s60,
                      height: AppSize.s60,
                      color: ColorManager.custom4GreyColor,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            PageIndicator(pageController: _pageController),
            const SizedBox(
              height: AppSize.s30,
            ),
            Container(
              width: MediaQuery.of(context).size.width - AppSize.s30,
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p20, vertical: AppPadding.p25),
              decoration: BoxDecoration(
                color: ColorManager.custom4GreyColor.withOpacity(0.05),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(AppSize.s24),
                  topLeft: Radius.circular(AppSize.s24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringManager.product1DetailsTitle,
                    style: StyleManager.w600TextStyle(
                      size: AppSize.s20,
                      color: ColorManager.blackColor,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                  const ReusableBeforeAndAfterPrice(),
                  const SizedBox(
                    height: AppSize.s24,
                  ),
                  const CustomRatingBar(),
                  const SizedBox(
                    height: AppSize.s35,
                  ),
                  Text(
                    StringManager.detailsText,
                    style: StyleManager.w500TextStyle(
                      size: AppSize.s16,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s8,
                  ),
                  Text(
                    StringManager.productDetailsText,
                    style: StyleManager.w400TextStyle(
                        size: AppSize.s16,
                        color: ColorManager.custom2GreyColor),
                    maxLines: 3,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: AppSize.s35,
                  ),
                  const ReusableMenuTemp(
                    text: StringManager.nutritionalText,
                  ),
                  const Divider(
                    height: AppSize.s20,
                    color: ColorManager.custom3WhiteColor,
                  ),
                  const ReusableMenuTemp(
                    text: StringManager.reviewsText,
                  ),
                  const SizedBox(
                    height: AppSize.s30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReusableCheckOutButton(
                        width: MediaQuery.of(context).size.width * 0.3,
                        label: StringManager.addToCartText,
                        labelColor: ColorManager.primaryColor,
                        overlayColor: ColorManager.primaryColor,
                        backgroundColor: ColorManager.whiteColor,
                        sideColor: ColorManager.primaryColor,
                      ),
                      const SizedBox(
                        width: AppSize.s10,
                      ),
                      ReusableCheckOutButton(
                        width: MediaQuery.of(context).size.width * 0.45,
                        label: StringManager.buyNowText,
                        labelColor: ColorManager.whiteColor,
                        overlayColor: ColorManager.whiteColor,
                        backgroundColor: ColorManager.primaryColor,
                        sideColor: Colors.transparent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
