import 'package:flutter/material.dart';

import '../modules/orders/widgets/products_amount_row.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index)=>const Padding(
          padding: EdgeInsets.only(bottom:12.0),
          child: ProductsAmountRow(),
        ),
        itemCount: 2,
        );
  }
}