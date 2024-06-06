import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: false,
          actions:  [
            ProductsAppBar(
              text:tr(LocaleKeys.cart),
            ),
          ]),
      body: const CartViewBody(),
    ));
  }
}
