import 'package:flutter/material.dart';
import 'package:nami/presentation/component/shimmer.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';
import '../../../../core/routing/app_route.dart';
import '../../../component/product_item.dart';
import '../../products/product_details.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.45,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 8.0,
          children: provider.isLoading
              ? List.generate(8, (index) => const ShimmerWidget())
              : (provider.latestProductsList ?? []).map((product) {
                  return InkWell(
                    onTap: () {
                      push(ProductDetails(
                        product: product,
                      ));
                    },
                    child: ProductItem(
                      product: product,
                    ),
                  );
                }).toList(),
        );
      },
    );
  }
}
