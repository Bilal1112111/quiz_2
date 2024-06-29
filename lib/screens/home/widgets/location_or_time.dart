import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/icon_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class LocationOrTime extends StatefulWidget {
  LocationOrTime({
    super.key,
    required this.value,
    this.items,
    required this.label,
    this.isExpanded = false,
  });

  String value;
  final List<DropdownMenuItem<String>>? items;
  final String label;
  final bool isExpanded;
  @override
  State<LocationOrTime> createState() => _LocationOrTimeState();
}

class _LocationOrTimeState extends State<LocationOrTime> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: StyleManager.w800TextStyle(
            size: 11.0,
            color: ColorManager.custom3WhiteColor,
          ),
        ),
        DropdownButton<String>(
          dropdownColor: ColorManager.primaryColor,
          borderRadius: BorderRadius.circular(AppSize.s30),
          value: widget.value,
          items: widget.items,
          onChanged: (value) {
            setState(() {
              widget.value = value!;
            });
          },
          style: StyleManager.w500TextStyle(
            size: AppSize.s14,
            color: ColorManager.custom2WhiteColor,
          ),
          icon: const Icon(
            IconManager.arrowDown,
            color: ColorManager.custom2WhiteColor,
          ),
          iconSize: 20,
          underline: Container(
            height: 0,
            color: Colors.transparent,
          ),
          isExpanded: widget.isExpanded,
        ),
      ],
    );
  }
}
