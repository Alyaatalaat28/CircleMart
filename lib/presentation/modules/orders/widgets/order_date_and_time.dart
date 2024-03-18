import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';

class OrderDateAndTime extends StatelessWidget {
  const OrderDateAndTime({super.key, required this.time, required this.date});
  final String time;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(67.w),
        Text(
          'م',
          style: AppStyles.regular14(context, AppColors.kBlack),
        ),
        Gap(5.w),
        Text(
          time,
          style: AppStyles.regular14(context, AppColors.kBlack),
        ),
        Gap(8.w),
        SvgPicture.asset(Assets.time),
        const Spacer(),
        Text(
          date,
          style: AppStyles.regular14(context, AppColors.kBlack),
        ),
        Gap(8.w),
        SvgPicture.asset(Assets.calender),
      ],
    );
  }
}
