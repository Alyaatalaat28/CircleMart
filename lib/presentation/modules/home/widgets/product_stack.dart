import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:provider/provider.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'favorite_and_discount_product.dart';

class ProductStack extends StatelessWidget {
  const ProductStack({super.key, required this.product, this.onTap});
  final Datam product;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) => Stack(
        alignment: Alignment.topCenter,
        children: [
          CachedNetworkImage(
            imageUrl: product.image!,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: 135,
          ),
          ProductFavoriteAndDiscount(
            isChecked: product.isFavorite,
            product: product,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
