import 'package:flutter/material.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/injection.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:nami/presentation/modules/invoice/invoice_view_model.dart';
import 'package:nami/presentation/modules/orders/orders_view_model.dart';
import 'package:nami/presentation/modules/products/products_view_model.dart';
import 'package:provider/provider.dart';

class AppMultiProvider extends StatelessWidget {
  const AppMultiProvider({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => getIt<HomeProvider>()
            ..getCategorisData()
            ..getHomeSliderImages()
            ..getLatestProducts(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => getIt<ProductsViewModel>(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => getIt<OrdersViewModel>(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => getIt<InvoiceViewModel>(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => getIt<SharedPref>()..loadCart(),
        ),
      ],
      child: child,
    );
  }
}
