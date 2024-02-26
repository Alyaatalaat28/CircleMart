import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/orders/widgets/current_order.dart';

class CurrentOrderListView extends StatelessWidget {
  const CurrentOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index)=> const Padding(
          padding: EdgeInsets.symmetric(vertical:8.0),
          child: CurrentOrder(),
        ),
        itemCount: 1,
        ),
    );
  }
}