import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';

class ProductsAmountRow extends StatelessWidget {
  const ProductsAmountRow(
      {super.key,
      required this.weightUnit,
      required this.title,
      required this.price});
  final num weightUnit;
  final String title;
  final num price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$title!', style: AppStyles.regular14(context, AppColors.kBlack)),
        const Spacer(),
        Text('$weightUnit x',
            style: AppStyles.semiBold16(
              context,
            ).copyWith(
              color: AppColors.kGray,
            )),
        Gap(15.w),
        Text('$price',
            style: AppStyles.semiBold14(
              context,
            )),
        Gap(3.w),
        Text(tr(LocaleKeys.pound),
         style: AppStyles.regular12(context, AppColors.kGray)),
      ],
    );
  }
}
