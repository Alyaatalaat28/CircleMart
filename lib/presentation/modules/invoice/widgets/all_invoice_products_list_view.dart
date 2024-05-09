import 'package:flutter/material.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/presentation/component/products_amount_row.dart';
import 'package:provider/provider.dart';

class InvoiceProductsListView extends StatelessWidget {
  const InvoiceProductsListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<SharedPref>(
      builder: (context, provider, child) => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: ProductsAmountRow(
            weightUnit: provider.cart[index].weightUnit!,
            title: provider.cart[index].title!,
            price: provider.cart[index].price!,
          ),
        ),
        itemCount: provider.cart.length,
      ),
    );
  }
}
