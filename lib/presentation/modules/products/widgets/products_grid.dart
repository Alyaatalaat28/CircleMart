import 'package:flutter/material.dart';
import 'package:nami/core/resources/assets.dart';
import 'package:nami/core/routing/app_route.dart';
import 'package:nami/presentation/component/product_item.dart';
import 'package:nami/presentation/modules/products/model/product_model.dart';

import '../product_details.dart';

class ProductsGrid extends StatelessWidget {
   ProductsGrid({super.key});

 final product= Product(
            name:'جمبري',
            image:Assets.shrimp ,
            price:280 ,
          );

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap:true,
      crossAxisCount: 2,
      childAspectRatio:1/1.2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 8.0,
      children: List.generate(6, (index) => InkWell(
      onTap: (){
          pushAndRemoveUntil( ProductDetails(
            product:product ,
          ));
          },
          child:  ProductItem(
             product: product,
          ))),
    );
  }
}