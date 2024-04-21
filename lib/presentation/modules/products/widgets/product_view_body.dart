import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/data/model/body/categoris/datum.dart';
import 'package:nami/presentation/component/inputs/custom_search_field.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:nami/presentation/modules/products/model/quary_parameters_model.dart';
import 'package:nami/presentation/modules/products/widgets/product_categoris.dart';
import 'package:provider/provider.dart';
import 'sub_categoris.dart';
import 'products_grid.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      final categoryIndex = provider.categorisSelectedIndex;
      final subCategoryIndex = provider.subCategorisSelectedIndex;
      Datum? category = provider.categorisSelectedIndex > -1
          ? provider.categoris!.data![provider.categorisSelectedIndex]
          : null;
      return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(6.0.w),
                child: Row(
                  children: [
                    SearchField(
                      onChanged: (value) {
                        provider.getProducts(
                          queryParams: ProductQueryParameters(
                            categoryId:
                                categoryIndex > -1 ? category?.id : null,
                            subCategoryId: subCategoryIndex > -1
                                ? category
                                    ?.subCategories![
                                        provider.subCategorisSelectedIndex]
                                    .id
                                : null,
                            title: provider.searchProductsController.text,
                          ),
                        );
                      },
                      controller: provider.searchProductsController,
                    ),
                  ],
                ),
              ),
              Gap(8.h),
              const ProductsSection(),
              Gap(8.h),
              const ProductBranches(),
              Gap(28.h),
              const ProductsGrid(),
            ],
          ),
        ),
      );
    });
  }
}
