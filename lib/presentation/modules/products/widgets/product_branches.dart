import 'package:flutter/material.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/modules/products/widgets/product_branch_item.dart';

class ProductBranches extends StatelessWidget {
  const ProductBranches({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: double.infinity,
      child: ListView.builder(
                   scrollDirection:Axis.horizontal,
                   shrinkWrap: true,
                   physics: const BouncingScrollPhysics(),
                   itemBuilder:(BuildContext context, int index)=> Padding(
                     padding: const EdgeInsets.symmetric(horizontal:6.0),
                     child: ProductBranchItem(
                      index:index
                     ),
                   ) , 
                   itemCount: 5,
                   ),
    );
  }
}