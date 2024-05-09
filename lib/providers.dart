import 'package:flutter/material.dart';
import 'package:nami/data/dataSource/local/shared_pref.dart';
import 'package:nami/injection.dart';
import 'package:nami/presentation/modules/auth/auth_provider.dart';
import 'package:nami/presentation/modules/contact/contact_us_provider.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:nami/presentation/modules/orders/orders_provider.dart';
import 'package:nami/presentation/modules/points/points_provider.dart';
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
              ..getLatestProducts()
              ..getFavorite()),
        ChangeNotifierProvider(
          create: (BuildContext context) => getIt<OrdersProvider>(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => getIt<SharedPref>()..loadCart(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => getIt<AuthProvider>()..getCity(),
        ),
         ChangeNotifierProvider(
          create: (BuildContext context) => getIt<PointsProvider>()..getPoints(),
        ),
         ChangeNotifierProvider(
          create: (BuildContext context) => getIt<ContactUsProvider>(),
        ),
      ],
      child: child,
    );
  }
}
