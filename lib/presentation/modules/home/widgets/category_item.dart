import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/modules/products/product_view.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => push(const ProductView() ),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: double.infinity, 
              maxHeight:  double.infinity, 
            ),
            child: Container(
              decoration: ShapeDecoration(
                color: AppColors.kLightGray,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child:const AspectRatio(
                aspectRatio: 1 / 1,
                child:Image(
                  image:AssetImage((Assets.productImage),),
                ),
              ),
            ),
          ),
          const Gap(10),
          Text(
            'مواد غذائية معبأة',
            textAlign: TextAlign.center,
            style: AppStyles.regular12(context, AppColors.kBlack),
          ),
        ],
      ),
    );
  }
}

