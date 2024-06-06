import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';

class EmptyOrders extends StatelessWidget {
  const EmptyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Gap(260.h),
          SvgPicture.asset(Assets.emptyCat, width: 70),
          Gap(10.h),
          Text(
           tr(LocaleKeys.emptyOrders),
            style: AppStyles.regular16(context, AppColors.kGray),
          ),
        ],
      ),
    );
  }
}
