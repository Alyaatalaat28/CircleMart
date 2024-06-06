import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:provider/provider.dart';

class OrderPrice extends StatelessWidget {
  const OrderPrice({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder: (context, provider, child) => Column(
        children: [
          Gap(30.h),
          Row(
            children: [
              Text(tr(LocaleKeys.theTotal),
                  style: AppStyles.regular12(context, AppColors.kBlack)),
              Gap(4.5.w),
              Text('${provider.totalPriceForSingleProduct(product)}',
                  style: AppStyles.semiBold16(context).copyWith(
                    color: AppColors.kRed,
                  )),
              Gap(4.5.w),
              Text(tr(LocaleKeys.pound), 
              style: AppStyles.regular12(context, AppColors.kRed)),
            ],
          ),
        ],
      ),
    );
  }
}
