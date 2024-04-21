import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key, required this.price});
  final num price;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 52.h,
        width: double.infinity,
        decoration: ShapeDecoration(
          color: AppColors.kWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(children: [
            SvgPicture.asset(Assets.price),
            Gap(8.w),
            Text(
              tr(LocaleKeys.thePrice),
              style: AppStyles.regular14(context, AppColors.kBlack),
            ),
            const Spacer(),
            Text(
              '$price',
              style: AppStyles.semiBold24(context),
            ),
            Gap(4.w),
            Text(tr(LocaleKeys.pound),
                style: AppStyles.regular12(context, AppColors.kRed)),
          ]),
        )));
  }
}
