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

class InviteFriendsItem extends StatelessWidget {
  const InviteFriendsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
         SvgPicture.asset(Assets.points, width: 24.w, height: 24.h),
        Gap(8.w),
        Column(children: [
          Text(tr(LocaleKeys.youInvited),
              style: AppStyles.regular12(
                context,
                AppColors.kGray,
              )),
          Gap(4.w),
          Text(
            'Alyaa Talaat',
            style: AppStyles.semiBold16(context),
          ),
        ]),
        const Spacer(),
        Text(
          '+ 10',
          style: AppStyles.semiBold18(context).copyWith(color: AppColors.kRed),
        ),
      ]),
    );
  }
}
