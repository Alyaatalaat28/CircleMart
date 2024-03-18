import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/presentation/modules/products/model/product_model.dart';
import 'package:provider/provider.dart';

class OrderPrice extends StatelessWidget {
  const OrderPrice({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder: (context, provider, child) => Column(
        children: [
          Gap(30.h),
          Row(
            children: [
              Text('ج.م', style: AppStyles.regular12(context, AppColors.kRed)),
              Gap(4.5.w),
              Text('${provider.totalPriceForSingleProduct(product)}',
                  style: AppStyles.semiBold18(context).copyWith(
                    color: AppColors.kRed,
                  )),
              Gap(4.5.w),
              Text(': الاجمالي',
                  style: AppStyles.regular12(context, AppColors.kBlack)),
            ],
          ),
        ],
      ),
    );
  }
}
