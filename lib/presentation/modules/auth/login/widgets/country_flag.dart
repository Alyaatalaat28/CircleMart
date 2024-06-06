// ignore_for_file: deprecated_member_use

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';

class CountryFlag extends StatelessWidget {
  const CountryFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: ShapeDecoration(
          color: AppColors.kLightGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            SvgPicture.asset(
              Assets.egFlag,
            ),
            Gap(12.w),
            Text(
             tr(LocaleKeys.egypt),
              style: AppStyles.regular14(context, AppColors.kBlack),
            ),
            const Spacer(),
            SvgPicture.asset(
              Assets.dropDownMenu,
              color: AppColors.kRed,
            ),
          ],
        ),
      ),
    );
  }
}
