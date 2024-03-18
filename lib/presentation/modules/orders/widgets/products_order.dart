import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/order_delivery_price.dart';
import 'package:nami/presentation/component/order_total_price.dart';
import 'package:nami/presentation/component/all_order_products_list_view.dart';

class ProductsOrderAmount extends StatelessWidget {
  const ProductsOrderAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: ShapeDecoration(
            color: AppColors.kLightGray,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text('المنتجات', style: AppStyles.semiBold12(context)),
            const ProductsListView(),
            const OrderDeliveryPrice(
              price: '20',
            ),
            Gap(24.h),
            const OrderTotalPrice(
              price: '569',
            ),
          ]),
        ));
  }
}
