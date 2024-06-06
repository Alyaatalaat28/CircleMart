import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/empty_orders.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:nami/presentation/modules/orders/widgets/current_order.dart';
import 'package:provider/provider.dart';

class CurrentOrderListView extends StatelessWidget {
  const CurrentOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersProvider>(builder: (context, provider, child) {
     return provider.isLoadingorders 
            ? const Center(
                child: CircularProgressIndicator(
                  color: AppColors.kRed,
                ),
              )
            : provider.myOrders!.data!.isEmpty
                ? const EmptyOrders()
                : Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CurrentOrder(
                myOrder: provider.myOrders!,
                index: index,
              ),
            ),
            itemCount: provider.myOrders!.data!.length,
          ),
        );
    }  
  );
  }
}
