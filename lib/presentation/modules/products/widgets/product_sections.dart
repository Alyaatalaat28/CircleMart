import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'product_sections_item.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 8),
      decoration: ShapeDecoration(
        color: AppColors.kRed.withOpacity(0.1),
        shape: const RoundedRectangleBorder(),
      ),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) =>
                    ProductSectionsItem(index: index),
                itemCount: 5,
              ),
              Gap(8.w),
              Text('الكل',
                  style: AppStyles.regular12(context, AppColors.kBlack)),
            ],
          ),
        ),
      ),
    );
  }
}
