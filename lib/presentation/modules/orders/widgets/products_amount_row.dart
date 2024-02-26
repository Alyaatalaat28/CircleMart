import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class ProductsAmountRow extends StatelessWidget {
  const ProductsAmountRow({super.key,required this.price,required this.amount,required this.product});
 final String price;
 final String amount;
 final String product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('ج.م',
        style:AppStyles.regular12(context, AppColors.kGray)),
        Gap(3.w),
        SizedBox(
          width: 35.w,
          height: 24,
          child: Text(price,
          style:AppStyles.semiBold16(context,)),
        ),
        Gap(15.w),
        Text('$amount x',
        style:AppStyles.semiBold14(context,).copyWith(
          color:AppColors.kGray,
        )),
        const Spacer(),
        Text(product,
         style:AppStyles.regular14(context, AppColors.kBlack)),
      ],
    );
  }
}