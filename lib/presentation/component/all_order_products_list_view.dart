import 'package:flutter/material.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:provider/provider.dart';
import 'products_amount_row.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder: (context, provider, child) => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: ProductsAmountRow(
            product: provider.cart[index],
          ),
        ),
        itemCount: provider.cart.length,
      ),
    );
  }
}
