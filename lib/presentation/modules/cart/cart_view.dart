import 'package:flutter/material.dart';
import 'package:nami/presentation/component/products_app_bar.dart';
import 'widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
         appBar:AppBar(
          automaticallyImplyLeading: false,
           actions:const[
           ProductsAppBar(
            text: 'السلة',
          ),
          ]
        ),
        body:const CartViewBody(),
      ));
  }
}