import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/color_manager.dart';

import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class ReusableListItem extends StatefulWidget {
  ReusableListItem({
    super.key,
    required this.label,
    this.onPressed,
    this.textColor,
    this.backgroundColor,
  });
  final String label;
  final Color? textColor;
  final Color? backgroundColor;
  final void Function()? onPressed;
  bool isActive = false;
  @override
  State<ReusableListItem> createState() => _ReusableListItemState();
}

class _ReusableListItemState extends State<ReusableListItem> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: widget.isActive == true
            ? ColorManager.customOrangeColor
            : ColorManager.whiteColor,
        side: widget.isActive == false
            ? const BorderSide(width: 1, color: Colors.grey)
            : const BorderSide(width: 0, color: Colors.transparent),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
      ),
      onPressed: () {
        setState(() {
          widget.isActive = !widget.isActive;
        });
      },
      child: Text(
        widget.label,
        style: StyleManager.w600TextStyle(
          size: AppSize.s14,
          color: widget.isActive == true
              ? ColorManager.custom1WhiteColor
              : ColorManager.custom1GreyColor,
        ),
      ),
    );
  }
}
