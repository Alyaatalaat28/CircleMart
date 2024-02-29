import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'package:nami/presentation/modules/invoice/widgets/orders_items_list_view.dart';

class PaymentAndDelivery extends StatelessWidget {
  const PaymentAndDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children:[
              const ProductsAppBar(
                text:'الدفع والتوصيل'
              ),
             Gap(30.h),
             const OrderItemsListView(),
            ]
          ),
        ),
      )
    ));
  }
}