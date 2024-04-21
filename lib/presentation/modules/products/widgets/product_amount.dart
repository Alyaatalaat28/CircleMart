import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import '../../../../core/resources/app_styles.dart';

class ProductAmount extends StatelessWidget {
  const ProductAmount({super.key, required this.amount});
  final double amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 199.w,
      decoration: ShapeDecoration(
        color: AppColors.kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Center(
        child: Text(
          '$amount',
          style: AppStyles.semiBold16(context),
        ),
      ),
    );
  }
}
