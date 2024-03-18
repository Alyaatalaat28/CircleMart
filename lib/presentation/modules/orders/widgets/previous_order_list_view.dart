import 'package:flutter/material.dart';
import 'previous_order.dart';

class PreviousOrderListView extends StatelessWidget {
  const PreviousOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: PreviousOrder(),
        ),
        itemCount: 1,
      ),
    );
  }
}
