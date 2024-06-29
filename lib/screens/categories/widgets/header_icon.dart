import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/color_manager.dart';

import '../../../core/utils/values_manager.dart';

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({
    super.key,
    required this.icon,
    this.color = ColorManager.whiteColor,
  });
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Icon(
        icon,
        size: AppSize.s26,
        color: color,
      ),
    );
  }
}
