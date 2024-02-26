import 'package:flutter/material.dart';
import '../../../../core/routing/app_route.dart';
import '../../../component/product_item.dart';
import '../../products/product_details.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
     return GridView.count(
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap:true,
      crossAxisCount: 2,
      childAspectRatio:1/1.2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 8.0,
      children: List.generate(8, (index) =>InkWell(
        onTap: (){
          push(const ProductDetails());
        },
        child: const ProductItem())),
    );
  }
}