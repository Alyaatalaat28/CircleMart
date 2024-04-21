import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/modules/orders/widgets/edit_and_cancel_buttons.dart';
import 'package:nami/presentation/modules/orders/widgets/products_order.dart';
import 'package:nami/presentation/modules/orders/widgets/custom_stepper.dart';

import '../../component/appbars/products_app_bar.dart';
import 'widgets/details_container.dart';
import 'widgets/shopping_bag.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              surfaceTintColor: Colors.transparent,
              automaticallyImplyLeading: false,
              actions: const [
                ProductsAppBar(
                  text: 'تفاصيل الطلب',
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
                    const OrderDetailsContainer(),
                    Gap(12.h),
                    const ProductsOrderAmount(),
                  ],
                ),
              ))),
    );
  }
}
