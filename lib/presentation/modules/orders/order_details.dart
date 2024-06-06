import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/data/model/body/my_orders/my_orders.dart';
import 'package:nami/presentation/modules/orders/widgets/custom_stepper.dart';
import 'package:nami/presentation/modules/orders/widgets/edit_and_cancel_buttons.dart';
import 'package:nami/presentation/modules/orders/widgets/products_order.dart';
import '../../component/appbars/products_app_bar.dart';
import 'widgets/details_container.dart';
import 'widgets/shopping_bag.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key, required this.myOrder, required this.index});
  final MyOrders myOrder;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              surfaceTintColor: Colors.transparent,
              automaticallyImplyLeading: false,
              actions:  [
                ProductsAppBar(
                  text: tr(LocaleKeys.orderDetails),
                ),
              ]),
          body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const ShoppingBagRow(),
                    const CustomStepper(),
                    Gap(22.h),
                    const EditAndCancelButtons(),
                    Gap(31.h),
                    OrderDetailsContainer(
                      myOrder: myOrder,
                      index: index,
                    ),
                    Gap(12.h),
                    ProductsOrderAmount(
                      myOrder: myOrder,
                      index: index,
                    ),
                  ],
                ),
              ))),
    );
  }
}
