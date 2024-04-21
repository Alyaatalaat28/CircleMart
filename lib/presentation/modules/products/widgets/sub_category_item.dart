import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/model/body/categoris/datum.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:nami/presentation/modules/products/model/quary_parameters_model.dart';
import 'package:provider/provider.dart';
import '../../../../core/resources/app_styles.dart';

class ProductBranchItem extends StatelessWidget {
  const ProductBranchItem(
      {super.key, required this.index, required this.category});

  final int index;
  final Datum category;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
        builder: (BuildContext context, provider, child) {
      // final subCategoryIndex = provider.subCategorisSelectedIndex;
      // final categoryIndex = provider.categorisSelectedIndex;
      return GestureDetector(
        onTap: () {
          provider.updateSubCategorisSelectedIndex(index);
          provider.getProducts(
            queryParams: ProductQueryParameters(
              // categoryId:categoryIndex>-1?category.id:null,
              subCategoryId: category
                  .subCategories![provider.subCategorisSelectedIndex].id,
              //title:provider.searchProductsController.text ,
            ),
          );
        },
        child: Container(
          height: 50.h,
          width: 116.w,
          decoration: ShapeDecoration(
            color: provider.subCategorisSelectedIndex == index
                ? AppColors.kRed
                : AppColors.kLightGray,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Center(
            child: Text(
              category.subCategories![index].title!,
              style: AppStyles.regular12(
                  context,
                  provider.subCategorisSelectedIndex == index
                      ? AppColors.kWhite
                      : AppColors.kBlack),
            ),
          ),
        ),
      );
    });
  }
}
