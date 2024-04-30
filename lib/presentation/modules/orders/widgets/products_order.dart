import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/app_styles.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/data/model/body/my_orders/my_orders.dart';
import 'package:nami/presentation/component/order_delivery_price.dart';
import 'package:nami/presentation/component/order_total_price.dart';
import 'package:nami/presentation/modules/orders/widgets/alll_order_products_listview.dart';

class ProductsOrderAmount extends StatelessWidget {
  const ProductsOrderAmount({super.key, required this.myOrder, required this.index});
  final MyOrders myOrder;
  final int index;
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
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
            Text('المنتجات', 
            style: AppStyles.semiBold12(context)),
             OrderProductsListView(
              myOrders: myOrder,
              cIndex: index,
              ),
             OrderDeliveryPrice(
              price:myOrder.data![index].deliveryPrice!.toString() ,
            ),
            Gap(24.h),
             OrderTotalPrice(
              price:myOrder.data![index].grandTotal.toString() ,
            ),
          ]),
        ));
  }
}
