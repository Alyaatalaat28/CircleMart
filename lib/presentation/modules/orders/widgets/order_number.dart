import 'package:flutter/material.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';


class OrderNumber extends StatelessWidget {
  const OrderNumber({super.key, required this.orderNumber,this.onTap});
  final String orderNumber;
  final void Function()?onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: onTap,
        child:Row(
      children: [
      Text(
        orderNumber,
        style: AppStyles.semiBold18(context).copyWith(color: AppColors.kRed),
      ),
      const Spacer(),
       Text(
          'التفاصيل',
          style: AppStyles.regular14(context, AppColors.kRed),
        ),
      
    ]));
  }
}
