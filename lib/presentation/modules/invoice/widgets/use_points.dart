import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class UsePoints extends StatelessWidget {
  const UsePoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('استخدام النقاط',
        style:AppStyles.regular12(context, AppColors.kGray),),
        Gap(2.h),
        Row(
          children: [
            Text('نقطة',
            style: AppStyles.regular10(context),),
            Gap(4.w),
            Text('( 130 )',
            style: AppStyles.semiBold14(context),),
          ],
        ),
      ],
    );
  }
}