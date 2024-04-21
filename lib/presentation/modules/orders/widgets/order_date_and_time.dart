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
        SvgPicture.asset(Assets.calender),
        Gap(8.w),
        Text(
          date,
          style: AppStyles.regular14(context, AppColors.kBlack),
        ),
        const Spacer(),
        SvgPicture.asset(Assets.time),
        Gap(8.w),
        Text(
          time,
          style: AppStyles.regular14(context, AppColors.kBlack),
        ),
        Gap(5.w),
        Text(
          'م',
          style: AppStyles.regular14(context, AppColors.kBlack),
        ),
        Gap(67.w),
      ],
    );
  }
}
