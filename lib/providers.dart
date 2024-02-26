import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/home/home_view_model.dart';
import 'package:nami/presentation/modules/orders/orders_view_model.dart';
import 'package:nami/presentation/modules/products/products_view_model.dart';
import 'package:provider/provider.dart';

import 'presentation/modules/category/category_view_model.dart';

class AppMultiProvider extends StatelessWidget {
  const AppMultiProvider({super.key,required this.child});
 final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) =>HomeViewModel(),
          ),
        ChangeNotifierProvider(
          create: (BuildContext context) =>CategoryViewModel(),
          ),
        ChangeNotifierProvider(
          create: (BuildContext context) =>ProductsViewModel(),
          ),
         ChangeNotifierProvider(
          create: (BuildContext context) =>OrdersViewModel(),
          ),
      ],
      child: child,
      );
  }
}