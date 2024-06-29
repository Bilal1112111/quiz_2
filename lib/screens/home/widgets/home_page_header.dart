import 'package:flutter/material.dart';
import 'package:ptc2d/screens/shopping_cart/offer_shopping_cart_screen.dart';
import 'package:ptc2d/screens/shopping_cart/shopping_cart_screen.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/icon_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          StringManager.heyUserText,
          style: StyleManager.w600TextStyle(
            size: AppSize.s22,
            color: ColorManager.custom2WhiteColor,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.53,
        ),
        Stack(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OfferShoppingCartScreen(),
                    ),
                  );
                },
                child: const Icon(
                  IconManager.shoppingBag,
                  size: AppSize.s26,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              height: AppSize.s20,
              width: AppSize.s20,
              left: AppSize.s20,
              bottom: AppSize.s18,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShoppingCartScreen(),
                    ),
                  );
                },
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
            ),
          ],
        ),
      ],
    );
  }
}
