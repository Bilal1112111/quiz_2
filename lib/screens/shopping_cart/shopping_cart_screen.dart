import 'package:flutter/material.dart';
import 'package:ptc2d/screens/check_out/check_out_screen.dart';
import 'package:ptc2d/screens/shopping_cart/widgets/shopping_cart_item.dart';
import 'package:ptc2d/screens/widgets/pinned_total.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/string_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';
import '../widgets/custom_bar.dart';

class ShoppingCartScreen extends StatelessWidget {
  ShoppingCartScreen({super.key});
  List<ShoppingCartItem> shoppingItems = [
    const ShoppingCartItem(label: StringManager.bananasText, price: '\$7.90'),
    const ShoppingCartItem(label: StringManager.package1Text, price: '\$7.90'),
    const ShoppingCartItem(label: StringManager.package2Text, price: '\$7.90'),
    const ShoppingCartItem(label: StringManager.bananasText, price: '\$7.90'),
    const ShoppingCartItem(label: StringManager.package2Text, price: '\$7.90'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomBar(label: StringManager.shoppingCartText),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: AppPadding.p20, right: AppPadding.p20, top: AppPadding.p40),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: shoppingItems.length * AppSize.s75,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return shoppingItems[index];
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          height: AppSize.s40,
                          thickness: 0.5,
                          color: ColorManager.custom9GreyColor,
                        );
                      },
                      itemCount: shoppingItems.length,
                    ),
                  ),
                  Text(
                    StringManager.editText,
                    style: StyleManager.w500TextStyle(
                      size: AppSize.s12,
                      color: ColorManager.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            PinnedTotal(
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
          ],
        ),
      ),
    );
  }
}
