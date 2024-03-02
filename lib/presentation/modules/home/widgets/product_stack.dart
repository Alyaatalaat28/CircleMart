import 'package:flutter/widgets.dart';
import 'package:nami/core/resources/assets.dart';
import 'favorite_and_discount_product.dart';

class ProductStack extends StatelessWidget {
  const ProductStack({super.key,required this.iconColor});
 final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return   Stack(
      alignment: Alignment.topCenter,
      children: [
        const Image(
                image: AssetImage((Assets.shrimp)
              )),
        ProductFavoriteAndDiscount(
          iconColor:iconColor ,
        ),
      ],
    );
  }
}