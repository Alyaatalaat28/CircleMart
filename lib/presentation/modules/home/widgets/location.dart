import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/locale_keys.g.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 126.w,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: AppColors.kRed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(children: [
        SvgPicture.asset(Assets.location),
        Gap(11.w),
        Text(tr(LocaleKeys.cairo),
         style: AppStyles.regular14(context, AppColors.kWhite)),
        Gap(11.w),
        SvgPicture.asset(Assets.dropDownMenu),
      ]),
    );
  }
}
