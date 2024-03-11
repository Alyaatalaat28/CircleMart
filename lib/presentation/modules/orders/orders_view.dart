import 'package:flutter/material.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'widgets/orders_view_body.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold(
         appBar:AppBar(
          automaticallyImplyLeading: false,
           actions:const [
          ProductsAppBar(
              text: 'طلباتي',
              ),
          ]
        ),
        body:const OrdersViewBody(),
      )
    );
  }
}