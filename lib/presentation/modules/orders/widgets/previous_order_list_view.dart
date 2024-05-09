import 'package:flutter/material.dart';
import 'package:nami/core/widgets/screen_state_layout.dart';
import 'package:nami/presentation/component/shimmer.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:provider/provider.dart';
import 'previous_order.dart';

class PreviousOrderListView extends StatelessWidget {
  const PreviousOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersProvider>(builder: (context, provider, child) {
      return ScreenStateLayout(
          builder: (context) => Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) => provider
                          .isLoadingorders
                      ? const ShimmerWidget()
                      : Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: PreviousOrder(
                            myOrder: provider.myOrders!,
                            index: index,
                          ),
                        ),
                  itemCount: provider.isLoadingorders
                      ? 8
                      : provider.myOrders!.data!.length,
                ),
              ));
    });
  }
}
