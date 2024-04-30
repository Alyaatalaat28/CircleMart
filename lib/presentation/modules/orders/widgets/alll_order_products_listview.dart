import 'package:flutter/material.dart';
import 'package:nami/data/model/body/my_orders/my_orders.dart';
import 'package:nami/presentation/component/products_amount_row.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:provider/provider.dart';

class OrderProductsListView extends StatelessWidget {
  const OrderProductsListView({super.key, required this.cIndex, required this.myOrders});
  final int cIndex;
  final MyOrders myOrders;
  @override
  Widget build(BuildContext context) {
    return Consumer<OrdersProvider>(
      builder:(context,provider,child)=> ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child:  ProductsAmountRow(
            weightUnit:myOrders.data![cIndex].details![index].qty!, 
            price: myOrders.data![cIndex].details![index].product!.price!,
            title: myOrders.data![cIndex].details![index].product!.title!,
            
          ),
        ),
        itemCount:myOrders.data![cIndex].details!.length,
      ),
    );
  }
}
