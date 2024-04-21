import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class OrderDeliveryPrice extends StatelessWidget {
  const OrderDeliveryPrice({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('التوصيل', style: AppStyles.regular12(context, AppColors.kBlack)),
        const Spacer(),
        Text(price,
            style: AppStyles.semiBold16(
              context,
            )),
        Gap(3.w),
        Text('ج.م', style: AppStyles.regular12(context, AppColors.kGray)),
      ],
    );
  }
}
