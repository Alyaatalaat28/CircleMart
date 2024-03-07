import 'package:flutter/material.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'package:nami/presentation/modules/setting/setting_view.dart';
import 'widgets/orders_view_body.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold(
         appBar:AppBar(
          automaticallyImplyLeading: false,
           actions:[
          ProductsAppBar(
              text: 'طلباتي',
              onTapBack: () => push(const SettingView()),
              ),
          ]
        ),
        body:OrdersViewBody(),
      )
    );
  }
}