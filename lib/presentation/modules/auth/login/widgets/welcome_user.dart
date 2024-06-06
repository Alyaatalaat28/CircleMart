import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
             tr(LocaleKeys.tittleLogin),
              style: AppStyles.semiBold24(context).copyWith(
                color: AppColors.kGray,
                fontSize: 28,
              ),
            ),
          ],
        ),
        Gap(8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(tr(LocaleKeys.bodyLogin ),
                style: AppStyles.regular14(context, AppColors.kGray)),
          ],
        ),
      ],
    );
  }
}
