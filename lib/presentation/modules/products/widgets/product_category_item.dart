import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/model/body/categoris/datum.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:nami/presentation/modules/products/model/quary_parameters_model.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ProductSectionsItem extends StatelessWidget {
  const ProductSectionsItem(
      {super.key, required this.index, required this.category});

  final int index;
  final Datum category;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
        builder: (BuildContext context, provider, child) {
      // final subCategoryIndex = provider.subCategorisSelectedIndex;
      return GestureDetector(
        onTap: () {
          provider.updateCategorisSelectedIndex(index);
          provider.getProducts(
            queryParams: ProductQueryParameters(
              categoryId: category.id,
              //  subCategoryId:subCategoryIndex>-1?category.subCategories![provider.subCategorisSelectedIndex].id:null ,
              //  title:provider.searchProductsController.text.isNotEmpty?provider.searchProductsController.text:null ,
            ),
          );
        },
        child: Container(
          height: 40.h,
          width: 140.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: provider.categorisSelectedIndex == index
                  ? AppColors.kRed
                  : Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(
                provider.categorisSelectedIndex == index ? 8 : 0),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CachedNetworkImage(
              imageUrl: category.image!,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              width: 24.w,
              height: 24.h,
              fit: BoxFit.fill,
            ),
            Gap(4.w),
            Text(category.title!,
                style: AppStyles.regular12(context, AppColors.kBlack)),
          ]),
        ),
      );
    });
  }
}
