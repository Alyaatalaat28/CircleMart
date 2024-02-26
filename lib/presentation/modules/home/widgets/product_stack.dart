import 'package:flutter/widgets.dart';
import 'package:nami/core/resources/assets.dart';
import 'favorite_and_discount_product.dart';

class ProductStack extends StatelessWidget {
  const ProductStack({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Stack(
      alignment: Alignment.topCenter,
      children: [
        Image(
                image: AssetImage((Assets.shrimp)
              )),
        ProductFavoriteAndDiscount(),
      ],
    );
  }
}