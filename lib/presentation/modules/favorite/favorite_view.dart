import 'package:flutter/material.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'package:nami/presentation/modules/favorite/widgets/favorite_grid_view.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

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
                  text: 'المفضلة',
                  onTap: () {
                    Navigator.pop(context);
                    provider.getLatestProducts();
                  }),
            ]),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                FavoriteGridView(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
