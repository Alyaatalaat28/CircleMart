import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'order_amount.dart';
import 'order_price.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.product,
  });
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CachedNetworkImage(
            imageUrl: product.image!,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: 25,
            width: 25,
            fit: BoxFit.fill),
        Gap(6.w),
        OrderAmount(
          product: product,
        ),
        const Spacer(),
        OrderPrice(
          product: product,
        ),
      ],
    );
  }
}
