import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/data/model/body/latest_products/datum.dart';
import 'package:provider/provider.dart';
import 'product_amount.dart';
import 'product_price.dart';

class ProductPriceAndAmount extends StatelessWidget {
  const ProductPriceAndAmount({super.key, required this.product});
  final Datam product;
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
        builder: (BuildContext context, provider, child) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 136,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          decoration: ShapeDecoration(
            color: AppColors.kLightGray,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Column(children: [
            ProductPrice(
              price: product.price!,
            ),
            Gap(12.h),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              GestureDetector(
                  onTap: () {
                    provider.increaseQuantity();
                  },
                  child: SvgPicture.asset(Assets.plus)),
              ProductAmount(
                amount: provider.counter,
              ),
              GestureDetector(
                  onTap: () {
                    provider.decreaseQuantity();
                  },
                  child: SvgPicture.asset(Assets.minus))
            ]),
          ]),
        ),
      );
    });
  }
}
