import 'package:flutter/material.dart';
import 'category_item.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap:true,
      crossAxisCount: 4,
      childAspectRatio:1/1.8,
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 7.0,
      children: List.generate(8, (index) =>const CategoryItem()),
    );
  }
}