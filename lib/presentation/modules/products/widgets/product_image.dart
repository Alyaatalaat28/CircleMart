import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        height: 234.h,
        child: CachedNetworkImage(
          imageUrl: product.image!,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
