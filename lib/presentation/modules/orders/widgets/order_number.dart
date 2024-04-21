import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/orders/order_details.dart';

class OrderNumber extends StatelessWidget {
  const OrderNumber({super.key, required this.orderNumber});
  final String orderNumber;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        orderNumber,
        style: AppStyles.semiBold18(context).copyWith(color: AppColors.kRed),
      ),
      const Spacer(),
      GestureDetector(
        onTap: () {
          push(const OrderDetails());
        },
        child: Text(
          'التفاصيل',
          style: AppStyles.regular14(context, AppColors.kRed),
        ),
      ),
    ]);
  }
}
