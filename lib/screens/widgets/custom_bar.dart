import 'package:flutter/material.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.whiteColor,
      surfaceTintColor: Colors.transparent,
      leadingWidth: MediaQuery.of(context).size.width,
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
            Text(
              label,
              style: StyleManager.w400TextStyle(
                size: AppSize.s16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
