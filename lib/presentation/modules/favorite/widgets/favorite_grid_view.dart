import 'package:flutter/material.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/presentation/component/product_item.dart';
import 'package:nami/presentation/modules/products/model/product_model.dart';

class FavoriteGridView extends StatelessWidget {
  const FavoriteGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1 / 1.2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 8.0,
      children: List.generate(
          2,
          (index) => ProductItem(
                iconColor: Colors.red,
                product: Product(
                  name: 'جمبري',
                  image: Assets.shrimp,
                  price: 280,
                ),
              )),
    );
  }
}
