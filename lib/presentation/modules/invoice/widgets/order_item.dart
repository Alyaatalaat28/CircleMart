import 'package:flutter/material.dart';
import 'package:nami/core/resources/assets.dart';
import 'order_amount.dart';
import 'order_price.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
       OrderPrice(),
        Spacer(),
        OrderAmount(),
        Image(
          image: AssetImage(Assets.shrimp),
          width:72,
          height:48,
        ),
      ],
    );
  }
}