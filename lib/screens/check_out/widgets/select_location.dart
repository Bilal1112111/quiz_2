import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/icon_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class SelectLocationWidget extends StatefulWidget {
  SelectLocationWidget({
    super.key,
    required this.label,
    required this.location,
  });
  final String label;
  final String location;

  @override
  State<SelectLocationWidget> createState() => _SelectLocationWidgetState();
  bool isActive = false;
}

class _SelectLocationWidgetState extends State<SelectLocationWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.isActive = !widget.isActive;
        });
      },
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.15,
        padding: const EdgeInsets.all(AppPadding.p18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s12),
          border: Border.all(
            width: widget.isActive == true ? 2 : 1,
            color: widget.isActive == true
                ? ColorManager.customOrangeColor
                : ColorManager.custom6WhiteColor,
          ),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.label,
                  style: StyleManager.w400TextStyle(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.47,
                  child: Text(
                    widget.location,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: StyleManager.w600TextStyle(),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.19,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  backgroundColor: ColorManager.customOrangeColor,
                  radius: AppSize.s14,
                  child: Icon(
                    IconManager.check,
                    size: AppSize.s20,
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
          ],
        ),
      ),
    );
  }
}
