import 'package:flutter/material.dart';
import 'package:nami/core/resources/colors.dart';
import 'package:nami/presentation/component/empty_orders.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:provider/provider.dart';
import 'previous_order.dart';

class PreviousOrderListView extends StatelessWidget {
  const PreviousOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersProvider>(
      builder: (context, provider, child) {
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
                        child: PreviousOrder(
                          myOrder: provider.myOrders!,
                          index: index,
                        ),
                      ),
                      itemCount: provider.myOrders!.data!.length,
                    ),
                  );
      },
    );
  }
}
