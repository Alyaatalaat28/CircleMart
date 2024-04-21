import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import '../../../../core/resources/app_styles.dart';

class OrderAmount extends StatelessWidget {
  const OrderAmount({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title!,
          style: AppStyles.semiBold12(context),
        ),
        Row(
          children: [
            Text('${product.weightUnit}',
                style: AppStyles.semiBold14(context).copyWith(
                  color: AppColors.kRed,
                )),
            Gap(4.w),
            Text('x',
                style: AppStyles.regular12(
                  context,
                  AppColors.kRed,
                ))
          ],
        ),
      ],
    );
  }
}
