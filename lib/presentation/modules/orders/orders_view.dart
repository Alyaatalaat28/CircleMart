import 'package:flutter/material.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'package:nami/presentation/modules/home/bottom_nav_bar.dart';
import 'widgets/orders_view_body.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key, required this.isFromHome});
  final bool isFromHome;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions: [
            ProductsAppBar(
              text: 'طلباتي',
              onTap: () {
                isFromHome
                    ? pushAndRemoveUntil(const BottomNavBar())
                    : Navigator.pop(context);
              },
            ),
          ]),
      body: const OrdersViewBody(),
    ));
  }
}
