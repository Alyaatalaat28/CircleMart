import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/component/custom_search_field.dart';
import 'product_branches.dart';
import 'product_sections.dart';
import '../../../component/products_app_bar.dart';
import 'products_grid.dart';

class ProductViewBody extends StatelessWidget {
  ProductViewBody({super.key});
  final TextEditingController searchProductsController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
          const ProductsAppBar(
            text: 'المنتجات',
           ),
           Gap(30.h),
           Padding(
             padding: EdgeInsets.all(6.0.w),
             child: Row(
               children: [
                 SearchField(
                  controller: searchProductsController,
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
  }
}