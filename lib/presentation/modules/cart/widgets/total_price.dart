import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:provider/provider.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder: (context, provider, child) => Column(
        children: [
          Text(
            ': الاجمالي',
            style: AppStyles.regular12(context, AppColors.kBlack),
          ),
          Gap(4.h),
          Row(
            children: [
              Text(
                'ج.م',
                style: AppStyles.regular12(context, AppColors.kRed),
              ),
              Gap(4.w),
              Text(
                '${provider.totalPriceForSingleProduct(product)}',
                style: AppStyles.semiBold18(context)
                    .copyWith(color: AppColors.kRed),
              ),
            ],
          )
        ],
      ),
    );
  }
}
