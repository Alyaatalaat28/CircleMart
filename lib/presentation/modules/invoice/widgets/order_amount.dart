import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/products/model/product_model.dart';
import '../../../../core/resources/app_styles.dart';

class OrderAmount extends StatelessWidget {
  const OrderAmount({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(product.name, style: AppStyles.semiBold14(context)),
        Gap(9.5.h),
        Row(
          children: [
            Text('${product.quantity}',
                style: AppStyles.semiBold14(context).copyWith(
                  color: AppColors.kRed,
                )),
            Gap(4.w),
            Text('x',
                style: AppStyles.regular12(
                  context,
                  AppColors.kRed,
                ))
          ],
        ),
      ],
    );
  }
}
