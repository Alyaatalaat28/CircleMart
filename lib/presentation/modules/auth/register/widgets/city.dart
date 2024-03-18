// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';

class City extends StatelessWidget {
  const City({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.h,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: AppColors.kLightGray))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            SvgPicture.asset(
              Assets.dropDownMenu,
              color: AppColors.kRed,
            ),
            const Spacer(),
            Text(
              'المدينة',
              style: AppStyles.regular14(context, AppColors.kBlack),
            ),
            Gap(6.w),
            SvgPicture.asset(
              Assets.city,
            )
          ],
        ),
      ),
    );
  }
}
