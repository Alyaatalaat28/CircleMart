import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class OrderPrice extends StatelessWidget {
  const OrderPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Gap(30.h),
        Row(
          children: [
            Text('ج.م',
            style:AppStyles.regular12(context, AppColors.kRed)),
            Gap(4.5.w),
             Text('560',
            style:AppStyles.semiBold18(context).copyWith(
              color: AppColors.kRed,
            )),
             Gap(4.5.w),
             Text(': الاجمالي',
            style:AppStyles.regular12(context, AppColors.kBlack)),
          ],
        ),
      ],
    );
  }
}