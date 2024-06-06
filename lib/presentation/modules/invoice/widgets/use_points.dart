import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:provider/provider.dart';

class UsePoints extends StatelessWidget {
  const UsePoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersProvider>(
      builder: (context, provider, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            tr(LocaleKeys.usePoints),
            style: AppStyles.regular12(context, AppColors.kGray),
          ),
          Gap(2.h),
          Row(
            children: [
              Text(
               tr(LocaleKeys.point),
                style: AppStyles.regular10(context),
              ),
              Gap(4.w),
              Text(
                '${provider.orderCost!.data!.totalPoints}',
                style: AppStyles.semiBold14(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
