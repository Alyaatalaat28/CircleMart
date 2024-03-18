import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key, required this.price});
  final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 52.h,
        width: double.infinity,
        decoration: ShapeDecoration(
          color: AppColors.kWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(children: [
            Text('ج.م', style: AppStyles.regular12(context, AppColors.kRed)),
            Gap(4.w),
            Text(
              '$price',
              style: AppStyles.semiBold24(context),
            ),
            const Spacer(),
            Text(
              ': السعر',
              style: AppStyles.regular14(context, AppColors.kBlack),
            ),
            Gap(8.w),
            SvgPicture.asset(Assets.price)
          ]),
        )));
  }
}
