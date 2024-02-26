import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'package:nami/presentation/modules/orders/orders_view_model.dart';
import 'package:provider/provider.dart';
import 'current_order_list_view.dart';
import 'orders_status_buttons_row.dart';
import 'previous_order_list_view.dart';


class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<OrdersViewModel>(
      builder: (BuildContext context, provider, child) {  
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children:[
            const ProductsAppBar(text: 'طلباتي',),
            Gap(24.h),
            const OrdersStatusButtonsRow(),
            Gap(24.h),
            provider.showCurrentOrders? const CurrentOrderListView():const PreviousOrderListView(),
          ]
        ),
      );
      }
    );
  }
}