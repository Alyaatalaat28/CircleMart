import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nami/core/resources/locale_keys.g.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';
import 'widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
              surfaceTintColor: Colors.transparent,
              automaticallyImplyLeading: false,
              actions: [
                ProductsAppBar(
                  text: tr(LocaleKeys.products),
                  onTap: () {
                    Navigator.pop(context);
                    provider.updateSubAndCategorisSelectedIndex();
                    provider.getLatestProducts();
                  },
                ),
              ]),
          body: const ProductViewBody(),
        ),
      ),
    );
  }
}
