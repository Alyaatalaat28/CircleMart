import 'package:flutter/material.dart';
import 'package:nami/presentation/modules/home/home_provider.dart';
import 'package:provider/provider.dart';
import 'category_item.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) => GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 4,
        childAspectRatio: 1 / 1.8,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 7.0,
        children: List.generate(
            provider.categoris.length > 8 ? 8 : provider.categoris.length,
            (index) => CategoryItem(
                  title: provider.categoris[index].title!,
                  image: provider.categoris[index].image!,
                )),
      ),
    );
  }
}
