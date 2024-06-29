import 'package:flutter/material.dart';

import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class ReusableCheckOutButton extends StatelessWidget {
  ReusableCheckOutButton({
    super.key,
    required this.width,
    required this.overlayColor,
    required this.backgroundColor,
    required this.sideColor,
    required this.labelColor,
    required this.label,
    this.onPressed,
    this.radius = AppSize.s20,
  });
  final double width;
  final Color overlayColor;
  final Color backgroundColor;
  final Color sideColor;
  final Color labelColor;
  final String label;
  void Function()? onPressed;
  double radius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: AppSize.s56,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          overlayColor: overlayColor,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(
              color: sideColor,
            ),
          ),
        ),
        child: Text(
          label,
          style: StyleManager.w600TextStyle(
            color: labelColor,
          ),
        ),
      ),
    );
  }

  bool isActive = false;
}
