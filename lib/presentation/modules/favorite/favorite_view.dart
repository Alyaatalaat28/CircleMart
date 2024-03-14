import 'package:flutter/material.dart';
import 'package:nami/presentation/component/appbars/products_app_bar.dart';
import 'package:nami/presentation/modules/favorite/widgets/favorite_grid_view.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
                appBar:AppBar(
          automaticallyImplyLeading: false,
           actions:const[
           ProductsAppBar(
            text: 'المفضلة',
          ),
          ]
        ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
            //  Gap(30.h),
              FavoriteGridView(),
            ],
          ),
        ),
      ),
    ));
  }
}