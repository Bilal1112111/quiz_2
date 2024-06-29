import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/values_manager.dart';

class BorderedIcon extends StatelessWidget {
  const BorderedIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: ColorManager.custom2WhiteColor,
      child: Icon(
        icon,
        color: ColorManager.custom2BlackColor,
        size: AppSize.s18,
      ),
    );
  }
}
