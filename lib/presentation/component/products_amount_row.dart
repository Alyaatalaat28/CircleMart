import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/presentation/modules/products/model/product_model.dart';
import 'package:provider/provider.dart';

class ProductsAmountRow extends StatelessWidget {
  const ProductsAmountRow({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder: (context, provider, child) => Row(
        children: [
          Text('ج.م', style: AppStyles.regular12(context, AppColors.kGray)),
          Gap(3.w),
          Text('${provider.totalPriceForSingleProduct(product)}',
              style: AppStyles.semiBold16(
                context,
              )),
          Gap(15.w),
          Text('${product.quantity} x',
              style: AppStyles.semiBold14(
                context,
              ).copyWith(
                color: AppColors.kGray,
              )),
          const Spacer(),
          Text(product.name,
              style: AppStyles.regular14(context, AppColors.kBlack)),
        ],
      ),
    );
  }
}
