import 'package:flutter/widgets.dart';
import 'favorite_and_discount_product.dart';

class ProductStack extends StatelessWidget {
  const ProductStack({super.key, required this.iconColor, required this.image});
  final Color iconColor;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image(image: AssetImage((image))),
        ProductFavoriteAndDiscount(
          iconColor: iconColor,
        ),
      ],
    );
  }
}
