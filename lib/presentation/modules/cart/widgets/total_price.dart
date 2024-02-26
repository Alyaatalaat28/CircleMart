import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(': الاجمالي',
        style: AppStyles.regular12(context, AppColors.kBlack),),
        Gap(4.h),
        Row(
          children: [
          Text('ج.م',
          style: AppStyles.regular12(context, AppColors.kRed),),
          Gap(4.w),
         Text('560',
        style: AppStyles.semiBold18(context).copyWith(
          color: AppColors.kRed
        ),),
          ],
        )
      ],
    );
  }
}