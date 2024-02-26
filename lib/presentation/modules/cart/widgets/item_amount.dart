import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/modules/cart/widgets/custom_icon_button.dart';
import '../../../../core/resources/app_styles.dart';
import 'total_price.dart';

class ItemAmount extends StatelessWidget {
  const ItemAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: Row(
              children: [
                const TotalPrice(),
                const Spacer(),
               const CustomIconButton(
                image: Assets.plus,
                ),
                Gap(8.w),
                Container(
                 width:124.w,
                 height:48.h,
                decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: AppColors.kLightGray),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child:Center(
                child: Text('2',
                style:AppStyles.semiBold16(context)),
              ),
                ),
                Gap(8.w),
               const CustomIconButton(
                image:Assets.minus,
                ),
      
            ],),
    );
  }
}