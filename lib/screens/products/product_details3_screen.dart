import 'package:flutter/material.dart';
import 'package:ptc2d/screens/products/widgets/before_and_after_price.dart';
import 'package:ptc2d/screens/products/widgets/custom_rating_bar.dart';
import 'package:ptc2d/screens/products/widgets/page_indicator.dart';
import 'package:ptc2d/screens/products/widgets/reusable_check_out_button.dart';
import 'package:ptc2d/screens/products/widgets/reusable_menu_template.dart';

import '../../core/utils/assets_manager.dart';
import '../../core/utils/color_manager.dart';
import '../../core/utils/icon_manager.dart';
import '../../core/utils/string_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';
import '../categories/widgets/header_icon.dart';

class ProductDetails3Screen extends StatefulWidget {
  ProductDetails3Screen({super.key});

  @override
  State<ProductDetails3Screen> createState() => _ProductDetails3ScreenState();
}

class _ProductDetails3ScreenState extends State<ProductDetails3Screen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: ColorManager.whiteColor,
        leadingWidth: MediaQuery.of(context).size.width * 0.75,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: AppSize.s16,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: AppMargin.m10),
            child: Row(
              children: [
                Stack(
                  children: [
                    const HeaderIcon(
                      icon: IconManager.shoppingBag,
                      color: ColorManager.custom1BlackColor,
                    ),
                    Positioned(
                      height: AppSize.s20,
                      width: AppSize.s20,
                      left: AppSize.s20,
                      bottom: AppSize.s18,
                      child: CircleAvatar(
                        backgroundColor: ColorManager.customOrangeColor,
                        child: Text(
                          '3',
                          style: StyleManager.w600TextStyle(
                            color: ColorManager.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: ColorManager.custom2WhiteColor,
              radius: 125,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                            width: AppSize.s70,
                            height: AppSize.s70,
                            color: ColorManager.custom4GreyColor,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                  PageIndicator(pageController: _pageController),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p25, vertical: AppPadding.p25),
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
                  CustomRatingBar(),
                  const SizedBox(
                    height: AppSize.s30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReusableCheckOutButton(
                        width: MediaQuery.of(context).size.width * 0.37,
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
                        width: MediaQuery.of(context).size.width * 0.40,
                        label: StringManager.buyNowText,
                        labelColor: ColorManager.whiteColor,
                        overlayColor: ColorManager.whiteColor,
                        backgroundColor: ColorManager.primaryColor,
                        sideColor: Colors.transparent,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.s30,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
