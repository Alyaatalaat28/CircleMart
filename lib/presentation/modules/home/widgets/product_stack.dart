import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
                  CachedNetworkImage(
                    imageUrl: image,
                    errorWidget: (context, url, error) =>const Icon(Icons.error),
                    height: 135,
                    ),
        ProductFavoriteAndDiscount(
          iconColor: iconColor,
        ),
      ],
    );
  }
}
