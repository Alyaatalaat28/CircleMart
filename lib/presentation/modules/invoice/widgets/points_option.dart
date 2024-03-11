import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/invoice/widgets/use_points.dart';
import 'package:nami/presentation/modules/products/products_view_model.dart';
import 'package:provider/provider.dart';

class PointsOption extends StatelessWidget {
  const PointsOption({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<ProductsViewModel>(
      builder:(context,provider,child)=> Row(
        children: [
          Text('ج.م',
          style:AppStyles.regular12(context, AppColors.kGray)),
          Gap(3.w),
          Text('13 -',
          style:AppStyles.semiBold16(context,)),
          const Spacer(),
           const UsePoints(),
           Gap(12.w),
          Checkbox(
            activeColor:AppColors.kRed,
            value: provider.isChecked,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(
                color: AppColors.kGray
              )
            ),
            onChanged: (value){
               provider.checked(value!);
            })
        ],
      ),
    );
  }
}