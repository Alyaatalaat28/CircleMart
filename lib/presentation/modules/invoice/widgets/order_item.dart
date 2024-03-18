import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'order_amount.dart';
import 'order_price.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OrderPrice(
          product: product,
        ),
        const Spacer(),
        OrderAmount(
          product: product,
        ),
        Gap(6.w),
                CachedNetworkImage(
                    imageUrl: product.image!,
                    errorWidget: (context, url, error) =>const Icon(Icons.error),
                    height: 40,
                    width:25
                    ),
      ],
    );
  }
}
