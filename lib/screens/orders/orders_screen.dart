import 'package:flutter/material.dart';
import 'package:ptc2d/screens/orders/widgets/current_order_list.dart';
import 'package:ptc2d/screens/orders/widgets/past_order_list.dart';
import 'package:ptc2d/screens/products/widgets/reusable_check_out_button.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/string_manager.dart';
import '../../core/utils/values_manager.dart';
import '../widgets/custom_bar.dart';

class OrdersScreen extends StatefulWidget {
  OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
  bool isActiveCurrent = true;
  bool isActivePast = false;
  List<CurrentOrdersList> currentOrderList = [
    const CurrentOrdersList(
        itemLabel: StringManager.freshOrangeText,
        price: '\$7.90',
        idText: StringManager.idText,
        riderName: StringManager.riderNameText,
        itemLabelOrder: StringManager.yourOrderText),
    const CurrentOrdersList(
        itemLabel: StringManager.freshFishText,
        price: '\$7.90',
        idText: StringManager.idText,
        riderName: StringManager.riderName2Text,
        itemLabelOrder: StringManager.yourOrder2Text),
  ];
  List<PastOrdersList> pastOrderList = [
    const PastOrdersList(
      itemLabel: StringManager.freshOrangeText,
      price: '\$7.90',
      idText: StringManager.idText,
    ),
    const PastOrdersList(
      itemLabel: StringManager.freshFishText,
      price: '\$7.90',
      idText: StringManager.idText,
    ),
  ];
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomBar(
          label: StringManager.ordersText,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  ReusableCheckOutButton(
                    radius: AppSize.s30,
                    onPressed: () {
                      setState(() {
                        widget.isActiveCurrent = true;
                        widget.isActivePast = false;
                      });
                    },
                    width: MediaQuery.of(context).size.width * 0.42,
                    overlayColor: widget.isActiveCurrent == true
                        ? ColorManager.whiteColor
                        : ColorManager.customOrangeColor,
                    backgroundColor: widget.isActiveCurrent == true
                        ? ColorManager.customOrangeColor
                        : ColorManager.whiteColor,
                    sideColor: widget.isActiveCurrent == true
                        ? Colors.transparent
                        : ColorManager.custom3WhiteColor,
                    labelColor: widget.isActiveCurrent == true
                        ? ColorManager.whiteColor
                        : ColorManager.custom3GreyColor,
                    label: StringManager.currentText,
                  ),
                  const SizedBox(
                    width: AppSize.s8,
                  ),
                  ReusableCheckOutButton(
                    radius: AppSize.s30,
                    onPressed: () {
                      setState(() {
                        widget.isActivePast = true;
                        widget.isActiveCurrent = false;
                      });
                    },
                    width: MediaQuery.of(context).size.width * 0.42,
                    overlayColor: widget.isActivePast == true
                        ? ColorManager.whiteColor
                        : ColorManager.customOrangeColor,
                    backgroundColor: widget.isActivePast == true
                        ? ColorManager.customOrangeColor
                        : ColorManager.whiteColor,
                    sideColor: widget.isActivePast == true
                        ? Colors.transparent
                        : ColorManager.custom3WhiteColor,
                    labelColor: widget.isActivePast == true
                        ? ColorManager.whiteColor
                        : ColorManager.custom3GreyColor,
                    label: StringManager.pastText,
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s60,
              ),
              SizedBox(
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return widget.isActiveCurrent == true
                          ? widget.currentOrderList[index]
                          : widget.pastOrderList[index];
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: AppSize.s40,
                        thickness: 0.5,
                        color: ColorManager.custom9GreyColor,
                      );
                    },
                    itemCount: widget.isActiveCurrent == true
                        ? widget.currentOrderList.length
                        : widget.pastOrderList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
