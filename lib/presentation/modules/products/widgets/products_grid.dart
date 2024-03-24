import 'package:flutter/material.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/component/product_item.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';

import '../product_details.dart';

class ProductsGrid extends StatelessWidget {
 const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder:(context,provider,child)=> GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.45,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 8.0,
        children: List.generate(
            provider.latestProducts!.data!.length,
            (index) => InkWell(
                onTap: () {
                  pushAndRemoveUntil(ProductDetails(
                    product: provider.latestProducts!.data![index],
                  ));
                },
                child: ProductItem(
                  product:  provider.latestProducts!.data![index],
                ))),
      ),
    );
  }
}
