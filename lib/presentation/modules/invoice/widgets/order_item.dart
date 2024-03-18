import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/products/model/product_model.dart';
import 'order_amount.dart';
import 'order_price.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.product});
  final Product product;
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
        Image(
          image: AssetImage(
            product.image,
          ),
          width: 72,
          height: 48,
        ),
      ],
    );
  }
}
