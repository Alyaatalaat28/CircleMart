import 'package:flutter/material.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          automaticallyImplyLeading: false,
           actions:const[
             ProductsAppBar(
              text: 'المنتجات',
           ),
          ]
        ),
        body: ProductViewBody(),
      ),
    );
  }
}