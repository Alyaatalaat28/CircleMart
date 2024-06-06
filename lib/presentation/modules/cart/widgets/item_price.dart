import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import '../../../../core/resources/app_styles.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${product.title}',
          style: AppStyles.semiBold14(context),
        ),
        Gap(8.h),
        Row(
          children: [
            SvgPicture.asset(Assets.price),
            Gap(4.w),
            Text(
              '${product.price}',
              style: AppStyles.semiBold16(context),
            ),
            Gap(4.w),
            Text(
              tr(LocaleKeys.pound),
              style: AppStyles.regular12(context, AppColors.kBlack),
            ),
          ],
        ),
      ],
    );
  }
}
