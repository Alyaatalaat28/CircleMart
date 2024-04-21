import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/orders/orders_view_model.dart';
import 'package:provider/provider.dart';
import 'orders_status_button.dart';

class OrdersStatusButtonsRow extends StatelessWidget {
  const OrdersStatusButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersViewModel>(
        builder: (BuildContext context, provider, child) {
      return Row(
        children: [
          OrdersStatusButton(
            text: 'الحالية',
            buttonColor: provider.showCurrentOrders
                ? AppColors.kRed
                : AppColors.kLightGray,
            textColor:
                provider.showCurrentOrders ? AppColors.kWhite : AppColors.kGray,
            onTap: () {
              provider.toggleOrdersView();
            },
          ),
          Gap(10.w),
          OrdersStatusButton(
            text: 'السابقة',
            buttonColor: provider.showCurrentOrders
                ? AppColors.kLightGray
                : AppColors.kRed,
            textColor:
                provider.showCurrentOrders ? AppColors.kGray : AppColors.kWhite,
            onTap: () {
              provider.toggleOrdersView();
            },
          ),
        ],
      );
    });
  }
}
