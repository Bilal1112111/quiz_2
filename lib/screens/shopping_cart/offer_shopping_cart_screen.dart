import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/color_manager.dart';
import 'package:ptc2d/screens/shopping_cart/widgets/custom_app_bar.dart';
import 'package:ptc2d/screens/shopping_cart/widgets/shopping_cart_item.dart';
import 'package:ptc2d/screens/widgets/pinned_total.dart';

import '../../core/utils/string_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';
import '../check_out/check_out_screen.dart';

class OfferShoppingCartScreen extends StatelessWidget {
  const OfferShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.custom1WhiteColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomScrollView(
            slivers: [
              CustomAppBar(
                padding: EdgeInsets.zero,
                backgroundColor: ColorManager.custom1OrangeColor,
                title: Text(
                  StringManager.shoppingCartText,
                  style: StyleManager.w400TextStyle(),
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: AppSize.s16,
                  ),
                ),
                backgroundIcon: const Text(
                  "#",
                  style: TextStyle(
                    fontSize: 300,
                    height: 1,
                    color: ColorManager.customOrangeColor,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                flexibleSpace: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "OFF!!",
                            style:
                                StyleManager.w800TextStyle(size: AppSize.s14),
                          ),
                          Text("25%",
                              style: StyleManager.w800TextStyle(
                                size: AppSize.s100 + 10,
                                color: ColorManager.whiteColor,
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: ColorManager.customOrangeColor,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Use code ",
                                  style: StyleManager.w400TextStyle(
                                      size: AppSize.s16),
                                ),
                                TextSpan(
                                  text: "#HalalFood ",
                                  style: StyleManager.w500TextStyle(
                                      size: AppSize.s16),
                                ),
                                TextSpan(
                                  text: "at Checkout",
                                  style: StyleManager.w400TextStyle(
                                      size: AppSize.s16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(
                    left: AppPadding.p30,
                    right: AppPadding.p30,
                    top: AppPadding.p10,
                    bottom: MediaQuery.sizeOf(context).height * .3,
                  ),
                  itemBuilder: (context, index) => const ShoppingCartItem(
                    label: 'Orange',
                    price: "\$10.00",
                  ),
                  separatorBuilder: (context, index) => const Divider(
                    height: AppSize.s28,
                    color: Color(0XFFEBEBFB),
                  ),
                  itemCount: 20,
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: PinnedTotal(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckOutScreen(),
                  ),
                );
              },
              widthSize: MediaQuery.of(context).size.width,
              buttonLabel: StringManager.proceedToCheckOutText,
              subTotalPrice: '\$35.96',
              deliveryPrice: '\$2.00',
              totalPrice: '\$37.96',
            ),
          ),
        ],
      ),
    );
  }
}
