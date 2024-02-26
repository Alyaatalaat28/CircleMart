import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nami/presentation/modules/cart/widgets/item_price.dart';
import '../../../../core/resources/assets.dart';
import 'item_amount.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(Assets.delete),
              const Spacer(),
               const ItemPrice(),
               const Image(
                image:AssetImage(Assets.shrimp)
                ),
            ],
          ),
        const ItemAmount(),
        ],
      ),
    );
  }
}