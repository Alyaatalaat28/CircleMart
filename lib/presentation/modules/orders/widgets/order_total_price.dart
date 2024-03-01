import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class TotalRow extends StatelessWidget {
  const TotalRow({super.key,required this.price});
 final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('ج.م',
        style:AppStyles.regular12(context, AppColors.kRed)),
        Gap(3.w),
        Text(price,
        style:AppStyles.semiBold18(context,).copyWith(
          color: AppColors.kRed
        )),
        const Spacer(),
        Text(': الاجمالي',
         style:AppStyles.semiBold14(context)),
      ],
    );
  }
}