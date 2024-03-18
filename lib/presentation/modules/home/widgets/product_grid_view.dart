import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';
import '../../../../core/routing/app_route.dart';
import '../../../component/product_item.dart';
import '../../products/product_details.dart';

class ProductGridView extends StatelessWidget {
 const ProductGridView({super.key});
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
            provider.latestProducts.length,
            (index) => InkWell(
                onTap: () {
                  push(ProductDetails(
                    product: provider.latestProducts[index],
                  ));
                },
                child: ProductItem(
                  product: provider.latestProducts[index],
                ))),
      ),
    );
  }


}
