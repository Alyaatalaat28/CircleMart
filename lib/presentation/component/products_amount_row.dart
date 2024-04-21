import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:provider/provider.dart';

class ProductsAmountRow extends StatelessWidget {
  const ProductsAmountRow({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder: (context, provider, child) => Row(
        children: [
          Text(product.title!,
              style: AppStyles.regular14(context, AppColors.kBlack)),
          const Spacer(),
          Text('${product.weightUnit} x',
              style: AppStyles.semiBold16(
                context,
              ).copyWith(
                color: AppColors.kGray,
              )),
          Gap(15.w),
          Text('${provider.totalPriceForSingleProduct(product)}',
              style: AppStyles.semiBold14(
                context,
              )),
          Gap(3.w),
          Text('ج.م', style: AppStyles.regular12(context, AppColors.kGray)),
        ],
      ),
    );
  }
}
