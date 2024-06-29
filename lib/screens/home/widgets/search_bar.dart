import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/icon_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class ReusableSearchBar extends StatelessWidget {
  const ReusableSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ColorManager.whiteColor,
      style: StyleManager.w500TextStyle(
        color: ColorManager.custom2WhiteColor,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorManager.custom2PrimaryColor,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(AppSize.s28),
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(AppSize.s26),
          ),
        ),
        prefixIcon: const Icon(
          IconManager.search,
          color: ColorManager.custom2WhiteColor,
        ),
        hintText: StringManager.searchHintText,
        hintStyle: StyleManager.w500TextStyle(
          color: ColorManager.custom2GreyColor,
        ),
      ),
    );
  }
}
